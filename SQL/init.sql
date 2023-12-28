-- create a commerce schema
CREATE SCHEMA IF NOT EXISTS commerce;

-- Use commerce schema
SET
    search_path TO commerce;

-- create a table named products
CREATE TABLE IF NOT EXISTS products (
    id int PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price REAL NOT NULL
);

-- create a users table
CREATE TABLE IF NOT EXISTS users (
    id int PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    PASSWORD VARCHAR(255) NOT NULL
);

ALTER TABLE
    products REPLICA IDENTITY FULL;

ALTER TABLE
    users REPLICA IDENTITY FULL;

CREATE TABLE IF NOT EXISTS attributed_checkouts (
    checkout_id VARCHAR PRIMARY KEY,
    user_name VARCHAR,
    click_id VARCHAR,
    product_id VARCHAR,
    payment_method VARCHAR,
    total_amount DECIMAL(5, 2),
    shipping_address VARCHAR,
    billing_address VARCHAR,
    user_agent VARCHAR,
    ip_address VARCHAR,
    checkout_time TIMESTAMP,
    click_time TIMESTAMP
);