-- =========================
-- INSERT CATEGORIES
-- =========================
INSERT INTO categories (category_name)
VALUES
('EvoSL'),
('Adios Pro 4');


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
VALUES
('adidas_evo_001', 'Adidas EvoSL White', 5800, true, 10, 1),
('adidas_evo_002', 'Adidas EvoSL Black', 5800, true, 8, 1),
('adidas_pro4_001', 'Adidas Adios Pro 4 White', 9500, true, 5, 2),
('adidas_pro4_002', 'Adidas Adios Pro 4 Pink', 9500, true, 6, 2);


-- =========================
-- INSERT USERS
-- =========================
INSERT INTO users (full_name, email, password_hash, phone, address)
VALUES
('Thirawat Rojanakul', 'thirawat@example.com', 'hashed_password_123', '0899999999', 'Bangkok, Thailand');


-- =========================
-- INSERT CART
-- =========================
INSERT INTO carts (user_id)
VALUES (1);


-- =========================
-- INSERT CART ITEMS
-- =========================
INSERT INTO cart_items (cart_id, product_id, quantity)
VALUES
(1, 'adidas_evo_001', 2),
(1, 'adidas_pro4_001', 1);


-- =========================
-- INSERT ORDERS
-- =========================
INSERT INTO orders (user_id, total_amount, order_status, shipping_address)
VALUES
(1, 21100, 'pending', 'Bangkok, Thailand');


-- =========================
-- INSERT ORDER ITEMS
-- =========================
INSERT INTO order_items (order_id, product_id, quantity, price_per_unit)
VALUES
(1, 'adidas_evo_001', 2, 5800),
(1, 'adidas_pro4_001', 1, 9500);