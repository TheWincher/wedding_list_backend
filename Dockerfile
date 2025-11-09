# ======== 1. Étape de build ========
FROM rust:1.91-bullseye AS builder

# Installer les dépendances système nécessaires
RUN apt-get update && apt-get install -y pkg-config libssl-dev && rm -rf /var/lib/apt/lists/*

# Créer un dossier de travail
WORKDIR /app

# Copier uniquement les fichiers de configuration Cargo pour mettre en cache les dépendances
COPY Cargo.toml Cargo.lock ./

# Étape de cache : construire un projet minimal juste pour télécharger les dépendances
RUN mkdir src && echo "fn main() {}" > src/main.rs && cargo build --release && rm -rf src

# Copier le code source complet
COPY . .

# Compiler l’application en mode release
RUN cargo build --release

# ======== 2. Étape d’exécution ========
FROM debian:bullseye-slim

# Installer les librairies nécessaires à l'exécution du binaire Rust (openssl, etc.)
RUN apt-get update && apt-get install -y libssl-dev ca-certificates && rm -rf /var/lib/apt/lists/*
# RUN apt-get update && apt-get install -y postgresql-client file


# Créer un utilisateur non-root pour la sécurité
# RUN useradd -m appuser

# Créer un répertoire pour l’application
WORKDIR /app

# Copier le binaire compilé depuis l’étape de build
COPY --from=builder /app/target/release/wedding_list_backend .
# COPY start.sh ./start.sh

# Donner les droits au nouvel utilisateur
# RUN chown appuser:appuser /app/wedding_list_backend
# RUN chown appuser:appuser ./start.sh
RUN chmod +x /app/wedding_list_backend
# RUN chmod +x ./start.sh
RUN ls -l ./wedding_list_backend


# Passer à l’utilisateur non-root
# USER appuser

# Exposer le port utilisé par ton backend (ajuste selon ton code)
EXPOSE 10000

# Lancer l’application
CMD ["./wedding_list_backend"]

# CMD pour Render Free : affiche debug puis lance le backend
# CMD ["./start.sh"]