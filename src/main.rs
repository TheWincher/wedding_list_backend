use std::{env, sync::Arc};

use axum::{
    Json, Router,
    extract::State,
    http::{HeaderValue, Method, StatusCode},
    routing::get,
};
use dotenvy::dotenv;
use serde::{Deserialize, Serialize};
use sqlx::{PgPool, Pool, Postgres, prelude::FromRow};
use tower_http::cors::{Any, CorsLayer};

use crate::config::Config;

mod config;
mod invites;

#[derive(Clone)]
pub struct AppState {
    pub pool: Arc<PgPool>,
    pub config: Arc<Config>,
}

#[derive(Serialize, Deserialize, Clone, FromRow)]
struct InviteResponse {
    id: i32,
    name: String,
    presence: Option<bool>,
    comment: Option<String>,
    kid: bool,
    diner: bool,
}

#[derive(Serialize, Deserialize, Clone)]
struct UpdateInviteDto {
    id: i32,
    presence: bool,
    comment: Option<String>,
}

#[tokio::main]
async fn main() {
    dotenv().ok();
    let config = Config::from_env();

    let cors_layer = CorsLayer::new()
        .allow_origin(config.frontend_url.parse::<HeaderValue>().unwrap())
        .allow_methods([Method::GET, Method::PATCH])
        .allow_headers(Any);

    let state = AppState {
        pool: Arc::new(
            Pool::<Postgres>::connect(&config.database_url)
                .await
                .unwrap(),
        ),
        config: Arc::new(config),
    };

    let app = Router::new()
        .route("/invites/:code", get(get_invites).patch(update_invites))
        .route("/invites/all/:code", get(get_all_invites))
        .layer(cors_layer)
        .with_state(state);

    let port = env::var("PORT").unwrap_or_else(|_| "3000".to_string());
    let listener = tokio::net::TcpListener::bind(format!("0.0.0.0:{}", port))
        .await
        .unwrap();

    println!("🚀 Serveur sur http://localhost:{}", port);
    axum::serve(listener, app).await.unwrap();
}

async fn get_invites(
    State(state): State<AppState>,
    axum::extract::Path(code): axum::extract::Path<String>,
) -> (StatusCode, Result<Json<Vec<InviteResponse>>, Json<String>>) {
    let invites = invites::get_invites(&state.pool, code).await;

    match invites {
        Err(e) => (StatusCode::INTERNAL_SERVER_ERROR, Err(Json(e.to_string()))),
        Ok(invites) => {
            if invites.is_empty() {
                return (
                    StatusCode::NOT_FOUND,
                    Err(Json("No invites found".to_string())),
                );
            }

            (StatusCode::OK, Ok(Json(invites)))
        }
    }
}

async fn get_all_invites(
    State(state): State<AppState>,
    axum::extract::Path(code): axum::extract::Path<String>,
) -> (StatusCode, Result<Json<Vec<InviteResponse>>, Json<String>>) {
    let invites = invites::get_all_invites(&state.pool, &state.config, code).await;

    match invites {
        Err(e) => (StatusCode::INTERNAL_SERVER_ERROR, Err(Json(e.to_string()))),
        Ok(invites) => {
            if invites.is_empty() {
                return (
                    StatusCode::NOT_FOUND,
                    Err(Json("No invites found".to_string())),
                );
            }

            (StatusCode::OK, Ok(Json(invites)))
        }
    }
}

async fn update_invites(
    State(state): State<AppState>,
    axum::extract::Json(dto): axum::extract::Json<Vec<UpdateInviteDto>>,
) -> (StatusCode, Result<Json<Vec<InviteResponse>>, Json<String>>) {
    let invites_updated = invites::update_invites(&state.pool, dto).await;
    match invites_updated {
        Ok(invites) => (StatusCode::OK, Ok(Json(invites))),
        Err(e) => {
            return (StatusCode::INTERNAL_SERVER_ERROR, Err(Json(e.to_string())));
        }
    }
}
