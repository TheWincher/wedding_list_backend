use sqlx::{Error, PgPool};

use crate::{InviteResponse, UpdateInviteDto};

pub async fn get_invites(pool: &PgPool, code: String) -> Result<Vec<InviteResponse>, Error> {
    sqlx::query_as::<_, InviteResponse>(
        "SELECT id, name, presence, comment FROM invites WHERE code = ?1",
    )
    .bind(code)
    .fetch_all(pool)
    .await
}

pub async fn update_invites(
    pool: &PgPool,
    dto: Vec<UpdateInviteDto>,
) -> Result<Vec<InviteResponse>, Error> {
    let mut invites_updated = Vec::new();
    for invite_to_update in dto.iter() {
        let result = sqlx::query_as::<_, InviteResponse>("UPDATE invites SET presence = ?1, comment = ?2 WHERE id = ?3 RETURNING id, name, presence, comment")
            .bind(invite_to_update.presence)
            .bind(&invite_to_update.comment)
            .bind(invite_to_update.id)
            .fetch_one(pool)
            .await;

        match result {
            Ok(invite) => {
                invites_updated.push(invite);
            }
            Err(e) => {
                return Err(e);
            }
        }
    }

    return Ok(invites_updated);
}
