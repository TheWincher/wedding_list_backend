use std::env;

#[derive(Clone)]
pub struct Config {
    pub database_url: String,
    pub admin_code: String,
    pub frontend_url: String,
}

impl Config {
    pub fn from_env() -> Self {
        Self {
            database_url: env::var("DATABASE_URL").expect("DATABASE_URL not set"),
            admin_code: env::var("ADMIN_CODE").expect("ADMIN_CODE not set"),
            frontend_url: env::var("FRONTEND_URL").expect("FRONTEND_URL not set"),
        }
    }
}
