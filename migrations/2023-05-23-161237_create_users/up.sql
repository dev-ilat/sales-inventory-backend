-- Your SQL goes here

CREATE TABLE users (
    uid UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    role_id INTEGER NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    FOREIGN KEY (role_id) REFERENCES roles(id)
);