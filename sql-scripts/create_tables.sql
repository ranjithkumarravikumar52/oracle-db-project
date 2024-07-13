-- DROP if any existing tables
DROP TABLE order_items CASCADE CONSTRAINTS;
DROP TABLE orders CASCADE CONSTRAINTS;
DROP TABLE customers CASCADE CONSTRAINTS;
DROP TABLE products CASCADE CONSTRAINTS;
DROP TABLE categories CASCADE CONSTRAINTS;

-- Create Categories Table
CREATE TABLE categories (
    category_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    description VARCHAR2(500)
);

-- Create Products Table
CREATE TABLE products (
    product_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    price NUMBER(10, 2),
    category_id NUMBER,
    description VARCHAR2(500),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- Create Customers Table
CREATE TABLE customers (
    customer_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    email VARCHAR2(100) UNIQUE,
    phone VARCHAR2(15),
    address VARCHAR2(200)
);

-- Create Orders Table
CREATE TABLE orders (
    order_id NUMBER PRIMARY KEY,
    customer_id NUMBER,
    order_date DATE,
    total_amount NUMBER(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Create OrderItems Table
CREATE TABLE order_items (
    order_item_id NUMBER PRIMARY KEY,
    order_id NUMBER,
    product_id NUMBER,
    quantity NUMBER,
    price NUMBER(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
