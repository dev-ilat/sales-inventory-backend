-- Your SQL goes here
CREATE TABLE products (
    uid UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    product_type_id INTEGER NOT NULL,
    name VARCHAR NOT NULL,
    description VARCHAR,
    FOREIGN KEY (product_type_id) REFERENCES product_types (id)
);