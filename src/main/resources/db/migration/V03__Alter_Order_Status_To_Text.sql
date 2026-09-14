ALTER TABLE tb_order
    ALTER COLUMN status TYPE VARCHAR(30)
    USING CASE status
        WHEN 0 THEN 'WAITING_PAYMENT'
        WHEN 1 THEN 'PAID'
        WHEN 2 THEN 'SHIPPED'
        WHEN 3 THEN 'DELIVERED'
        WHEN 4 THEN 'CANCELED'
        ELSE status::text
    END;