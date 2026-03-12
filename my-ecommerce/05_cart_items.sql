-- =========================
-- INSERT CART ITEMS
-- =========================
INSERT INTO cart_items (cart_id, product_id, quantity)
SELECT c.cart_id, v.product_id, v.quantity
FROM carts c
JOIN users u ON u.user_id = c.user_id
JOIN (
    VALUES
    ('adidas_evo_001', 2),
    ('adidas_pro4_001', 1)
) AS v(product_id, quantity) ON TRUE
WHERE u.email = 'thirawat@example.com'
ON CONFLICT (cart_id, product_id) DO UPDATE
SET quantity = EXCLUDED.quantity;
