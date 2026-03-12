-- =========================
-- INSERT ORDERS
-- =========================
INSERT INTO orders (user_id, total_amount, order_status, shipping_address)
SELECT
    u.user_id,
    21100,
    'pending',
    'Bangkok, Thailand'
FROM users u
WHERE u.email = 'thirawat@example.com'
AND NOT EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.user_id = u.user_id
      AND o.total_amount = 21100
      AND o.order_status = 'pending'
      AND o.shipping_address = 'Bangkok, Thailand'
);
