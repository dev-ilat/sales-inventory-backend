-- Your SQL goes here
CREATE TABLE order_details (
    uid UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    date TIMESTAMPTZ NOT NULL,
    total FLOAT NOT NULL
);