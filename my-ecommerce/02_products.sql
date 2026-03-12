-- =========================
-- INSERT PRODUCTS
-- =========================
INSERT INTO products (
    product_id,
    product_name,
    price,
    in_stock,
    stock_quantity,
    category_id
)
SELECT
    v.product_id,
    v.product_name,
    v.price,
    v.in_stock,
    v.stock_quantity,
    c.category_id
FROM (
    VALUES
    ('adidas_evo_001', 'Adidas EvoSL White', 5800, true, 10, 'EvoSL'),
    ('adidas_evo_002', 'Adidas EvoSL Black', 5800, true, 8, 'EvoSL'),
    ('adidas_pro4_001', 'Adidas Adios Pro 4 White', 9500, true, 5, 'Adios Pro 4'),
    ('adidas_pro4_002', 'Adidas Adios Pro 4 Pink', 9500, true, 6, 'Adios Pro 4')
) AS v(product_id, product_name, price, in_stock, stock_quantity, category_name)
JOIN categories c ON c.category_name = v.category_name
ON CONFLICT (product_id) DO UPDATE
SET product_name = EXCLUDED.product_name,
    price = EXCLUDED.price,
    in_stock = EXCLUDED.in_stock,
    stock_quantity = EXCLUDED.stock_quantity,
    category_id = EXCLUDED.category_id;
