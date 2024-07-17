BEGIN
    -- Loop to insert 10 categories
    FOR i IN 1..10 LOOP
        -- Insert a new category with a unique ID and a descriptive name and description
        INSERT INTO categories (category_id, name, description)
        VALUES (i, 'Category ' || i, 'Description for category ' || i);
    END LOOP;
    
    -- Commit the transaction to save changes
    COMMIT;
END;
/
