use std::env;

#[derive(Clone)]
pub struct Config {
    pub database_url: String,
    pub admin_code: String,
    pub frontend_url: String,
}

impl Config {
    pub fn from_env() -> Self {
        let database_url = env::var("DATABASE_URL").unwrap_or_else(|_| {
            eprintln!("❌ DATABASE_URL not set, exiting");
            std::process::exit(1);
        });

        let admin_code = env::var("ADMIN_CODE").unwrap_or_else(|_| {
            eprintln!("⚠️ ADMIN_CODE not set, using default");
            "admin123".to_string()
        });

        let frontend_url = env::var("FRONTEND_URL").unwrap_or_else(|_| {
            eprintln!("⚠️ FRONTEND_URL not set, using wildcard '*'");
            "*".to_string()
        });

        Self {
            database_url: database_url,
            admin_code: admin_code,
            frontend_url: frontend_url,
        }
    }
}
