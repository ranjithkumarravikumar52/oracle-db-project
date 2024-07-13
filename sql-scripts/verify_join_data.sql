-- Verify Products in a Category
SELECT c.name AS category_name, p.name AS product_name, p.price, p.description
FROM categories c
JOIN products p ON c.category_id = p.category_id
ORDER BY c.category_id, p.product_id;

-- Verify Orders by a Customer
SELECT o.order_id, c.name AS customer_name, o.order_date, o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
ORDER BY o.order_id;

-- Verify Order Items in an Order
SELECT oi.order_id, p.name AS product_name, oi.quantity, oi.price
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
ORDER BY oi.order_id, oi.order_item_id;
