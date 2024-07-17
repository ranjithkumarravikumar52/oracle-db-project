-- Script to populate the products table with mock data
BEGIN
    -- Loop to insert 10,000 products
    FOR i IN 1..10000 LOOP
        -- Insert a new product with a unique ID, random price, associated category, and a description
        INSERT INTO products (product_id, name, price, category_id, description)
        VALUES (
            i,
            'Product ' || i,
            ROUND(DBMS_RANDOM.VALUE(10, 1000), 2), -- Generate a random price between 10 and 1000
            MOD(i, 10) + 1, -- Assign a category ID between 1 and 10
            'Description for product ' || i -- Generate a description
        );
    END LOOP;
    -- Commit the transaction to save changes
    COMMIT;
END;
/
