-- =========================
-- INSERT ORDER ITEMS
-- =========================
INSERT INTO order_items (order_id, product_id, quantity, price_per_unit)
SELECT o.order_id, v.product_id, v.quantity, v.price_per_unit
FROM orders o
JOIN users u ON u.user_id = o.user_id
JOIN (
    VALUES
    ('adidas_evo_001', 2, 5800),
    ('adidas_pro4_001', 1, 9500)
) AS v(product_id, quantity, price_per_unit) ON TRUE
WHERE u.email = 'thirawat@example.com'
  AND o.total_amount = 21100
  AND o.order_status = 'pending'
  AND o.shipping_address = 'Bangkok, Thailand'
  AND NOT EXISTS (
      SELECT 1
      FROM order_items oi
      WHERE oi.order_id = o.order_id
        AND oi.product_id = v.product_id
  );
