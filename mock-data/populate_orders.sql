-- Script to populate the orders table with mock data
BEGIN
    -- Loop to insert 10,000 orders
    FOR i IN 1..10000 LOOP
        -- Insert a new order with a unique ID, customer ID, random order date, and total amount
        INSERT INTO orders (order_id, customer_id, order_date, total_amount)
        VALUES (
            i,
            MOD(i, 10000) + 1, -- Assign a customer ID between 1 and 10,000
            TO_DATE('2023-01-01', 'YYYY-MM-DD') + DBMS_RANDOM.VALUE(0, 365), -- Generate a random order date within a year
            ROUND(DBMS_RANDOM.VALUE(20, 2000), 2) -- Generate a random total amount between 20 and 2000
        );
    END LOOP;
    -- Commit the transaction to save changes
    COMMIT;
END;
/
