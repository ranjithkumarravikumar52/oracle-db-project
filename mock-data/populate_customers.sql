-- Script to populate the customers table with mock data
BEGIN
    -- Loop to insert 10,000 customers
    FOR i IN 1..10000 LOOP
        -- Insert a new customer with a unique ID, name, email, phone number, and address
        INSERT INTO customers (customer_id, name, email, phone, address)
        VALUES (
            i,
            'Customer ' || i,
            'customer' || i || '@example.com', -- Generate a unique email address
            '123456' || LPAD(i, 4, '0'), -- Generate a unique phone number
            'Address for customer ' || i -- Generate an address
        );
    END LOOP;
    -- Commit the transaction to save changes
    COMMIT;
END;
/
