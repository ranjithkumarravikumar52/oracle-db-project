-- Script to populate the order_items table with mock data
BEGIN
    -- Loop to insert 10,000 order items
    FOR i IN 1..10000 LOOP
        -- Insert a new order item with a unique ID, associated order ID, product ID, random quantity, and price
        INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price)
        VALUES (
            i,
            MOD(i, 10000) + 1, -- Assign an order ID between 1 and 10,000
            MOD(i, 10000) + 1, -- Assign a product ID between 1 and 10,000
            TRUNC(DBMS_RANDOM.VALUE(1, 10)), -- Generate a random quantity between 1 and 10
            ROUND(DBMS_RANDOM.VALUE(10, 1000), 2) -- Generate a random price between 10 and 1000
        );
    END LOOP;
    -- Commit the transaction to save changes
    COMMIT;
END;
/
