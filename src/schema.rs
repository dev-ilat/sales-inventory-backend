// @generated automatically by Diesel CLI.

diesel::table! {
    inventories (uid) {
        uid -> Uuid,
        product_uid -> Uuid,
        quantity -> Int4,
        cost -> Float8,
    }
}

diesel::table! {
    order_details (uid) {
        uid -> Uuid,
        date -> Timestamptz,
        total -> Float8,
    }
}

diesel::table! {
    orders (id) {
        id -> Int4,
        order_details_uid -> Uuid,
        product_uid -> Uuid,
        quantity -> Int4,
        total -> Float8,
    }
}

diesel::table! {
    product_types (id) {
        id -> Int4,
        name -> Varchar,
        description -> Nullable<Varchar>,
    }
}

diesel::table! {
    products (uid) {
        uid -> Uuid,
        product_type_id -> Int4,
        name -> Varchar,
        description -> Nullable<Varchar>,
    }
}

diesel::table! {
    roles (id) {
        id -> Int4,
        title -> Varchar,
        description -> Varchar,
    }
}

diesel::table! {
    users (uid) {
        uid -> Uuid,
        role_id -> Int4,
        first_name -> Varchar,
        last_name -> Varchar,
    }
}

diesel::joinable!(inventories -> products (product_uid));
diesel::joinable!(orders -> order_details (order_details_uid));
diesel::joinable!(orders -> products (product_uid));
diesel::joinable!(products -> product_types (product_type_id));
diesel::joinable!(users -> roles (role_id));

diesel::allow_tables_to_appear_in_same_query!(
    inventories,
    order_details,
    orders,
    product_types,
    products,
    roles,
    users,
);
