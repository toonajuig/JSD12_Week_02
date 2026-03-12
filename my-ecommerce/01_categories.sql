-- =========================
-- INSERT CATEGORIES
-- =========================
INSERT INTO categories (category_name)
VALUES
('EvoSL'),
('Adios Pro 4')
ON CONFLICT (category_name) DO NOTHING;
