-- Your SQL goes here
CREATE TABLE inventories (
    uid UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    product_uid UUID NOT NULL,
    quantity INTEGER NOT NULL,
    cost FLOAT NOT NULL,
    FOREIGN KEY (product_uid) REFERENCES products (uid)
);