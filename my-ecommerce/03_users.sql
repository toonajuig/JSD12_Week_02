-- =========================
-- INSERT USERS
-- =========================
INSERT INTO users (full_name, email, password_hash, phone, address)
VALUES
('Thirawat Rojanakul', 'thirawat@example.com', 'hashed_password_123', '0899999999', 'Bangkok, Thailand')
ON CONFLICT (email) DO UPDATE
SET full_name = EXCLUDED.full_name,
    password_hash = EXCLUDED.password_hash,
    phone = EXCLUDED.phone,
    address = EXCLUDED.address;
