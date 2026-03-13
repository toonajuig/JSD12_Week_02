-- =========================
-- INSERT CART
-- =========================
INSERT INTO carts (user_id)
SELECT user_id
FROM users
WHERE email = 'thirawat@example.com'
ON CONFLICT (user_id) DO NOTHING;
