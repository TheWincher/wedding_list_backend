CREATE TABLE IF NOT EXISTS invites (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    presence INTEGER NOT NULL,
    kid INTEGER NOT NULL,
    code TEXT NOT NULL,
    comment TEXT DEFAULT NULL
);

INSERT INTO invites (id, name, presence, kid, code) VALUES (0, "Emmanuel Louchez", 0, 0, "23LW4PC2");
INSERT INTO invites (id, name, presence, kid, code) VALUES (1, "Alexandra Seignobos", 0, 0, "23LW4PC2");
