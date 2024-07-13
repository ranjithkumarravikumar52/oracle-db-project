-- SQL script for inserting data

-- Insert Sample Data into Categories
INSERT INTO categories (category_id, name, description) VALUES (1, 'Electronics', 'Electronic gadgets and devices.');
INSERT INTO categories (category_id, name, description) VALUES (2, 'Books', 'Fiction and non-fiction books.');

-- Insert Sample Data into Products
INSERT INTO products (product_id, name, price, category_id, description) VALUES (1, 'Laptop', 1000.00, 1, 'High-performance laptop.');
INSERT INTO products (product_id, name, price, category_id, description) VALUES (2, 'Smartphone', 500.00, 1, 'Latest model smartphone.');
INSERT INTO products (product_id, name, price, category_id, description) VALUES (3, 'Novel', 20.00, 2, 'Bestselling novel.');

-- Insert Sample Data into Customers
INSERT INTO customers (customer_id, name, email, phone, address) VALUES (1, 'John Doe', 'john.doe@example.com', '1234567890', '123 Main St');
INSERT INTO customers (customer_id, name, email, phone, address) VALUES (2, 'Jane Smith', 'jane.smith@example.com', '0987654321', '456 Elm St');

-- Insert Sample Data into Orders
INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES (1, 1, TO_DATE('2023-07-12', 'YYYY-MM-DD'), 1500.00);
INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES (2, 2, TO_DATE('2023-07-13', 'YYYY-MM-DD'), 20.00);

-- Insert Sample Data into OrderItems
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (1, 1, 1, 1, 1000.00);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (2, 1, 2, 1, 500.00);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (3, 2, 3, 1, 20.00);
