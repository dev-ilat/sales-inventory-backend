-- Your SQL goes here
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    order_details_uid UUID NOT NULL,
    product_uid UUID NOT NULL,
    quantity INTEGER NOT NULL,
    total FLOAT NOT NULL,
    FOREIGN KEY (order_details_uid) REFERENCES order_details (uid),
    FOREIGN KEY (product_uid) REFERENCES products (uid)
);