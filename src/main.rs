use axum::{
    extract::State, http::{Method, StatusCode, HeaderValue}, routing::{get}, Json, Router
};
use serde::{Deserialize, Serialize};
use sqlx::{prelude::FromRow, SqlitePool};
use tower_http::cors::{Any, CorsLayer};

#[derive(Serialize, Deserialize, Clone, FromRow)]
struct Invite {
    id: i32,
    name: String,
    presence: bool,
    kid: bool,
    code: String,
    comment: Option<String>,
}

#[derive(Serialize, Deserialize, Clone, FromRow)]
struct InviteResponse {
    id: i32,
    name: String,
    presence: bool,
    comment: Option<String>,
}

#[derive(Serialize, Deserialize, Clone)]
struct UpdateInviteDto {
    id: i32,
    presence: bool,
    comment: Option<String>,
}

#[tokio::main]
async fn main() {
    let pool = SqlitePool::connect("sqlite:invites.db").await.expect("Failed to open db");
    let cors_layer = CorsLayer::new().allow_origin("http://localhost:5173".parse::<HeaderValue>().unwrap()).allow_methods([Method::GET, Method::PATCH]).allow_headers(Any);
    let app = Router::new()
        .route("/invites/:code", get(get_invites).patch(update_invites))
        .layer(cors_layer)
        .with_state(pool);

    println!("Serveur sur http://localhost:3000");
    let listener = tokio::net::TcpListener::bind("0.0.0.0:3000").await.unwrap();
    axum::serve(listener, app).await.unwrap();
}

async fn get_invites(State(pool): State<SqlitePool>, axum::extract::Path(code): axum::extract::Path<String>) -> (StatusCode, Result<Json<Vec<InviteResponse>>, Json<String>>) {
    let invites = sqlx::query_as::<_, InviteResponse>("SELECT id, name, presence, comment FROM invites WHERE code = ?1")
        .bind(code)
        .fetch_all(&pool)
        .await;
    
    match invites {
        Err(e) => {
            (StatusCode::INTERNAL_SERVER_ERROR, Err(Json(e.to_string())))
        }
        Ok(invites) => {
            if invites.is_empty() {
                return (StatusCode::NOT_FOUND, Err(Json("No invites found".to_string())));
            }

            (StatusCode::OK, Ok(Json(invites)))
        }
    }
}

async fn update_invites(State(pool): State<SqlitePool>, axum::extract::Json(dto): axum::extract::Json<Vec<UpdateInviteDto>>) -> (StatusCode, Result<Json<Vec<InviteResponse>>, Json<String>>) {
    let mut invites_updated = Vec::new();
    for invite_to_update in dto.iter() {
        let result = sqlx::query_as::<_, InviteResponse>("UPDATE invites SET presence = ?1, comment = ?2 WHERE id = ?3 RETURNING id, name, presence, comment")
            .bind(invite_to_update.presence)
            .bind(&invite_to_update.comment)
            .bind(invite_to_update.id)
            .fetch_one(&pool)
            .await;

        match result {
            Ok(invite) => {
                invites_updated.push(invite);
            }
            Err(e) => {
                return (StatusCode::INTERNAL_SERVER_ERROR, Err(Json(e.to_string())));
            }
        }
    }

    (StatusCode::OK, Ok(Json(invites_updated)))

}
