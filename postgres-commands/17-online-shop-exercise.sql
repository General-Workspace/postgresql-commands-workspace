CREATE TABLE IF NOT EXISTS products (
    product_name VARCHAR(255) NOT NULL,
    price NUMERIC DEFAULT NULL,
    description TEXT NOT NULL,
    amount_in_stock INT DEFAULT NULL,
    image_url VARCHAR(255)
);
INSERT INTO products (
        product_name,
        price,
        description,
        amount_in_stock,
        image_url
    )
VALUES (
        'Anti Blue Screen Eye glass',
        12.99,
        'It protects yours eyes against the blue rays emitted from the computer if you happen to use the computer for long hours.',
        4,
        'http://dummy-image-url.png'
    )
ALTER TABLE products
ADD CONSTRAINT positive_product_price CHECK (price > 0);
ADD CONSTRAINT non_zero_amount_in_stock CHECK (amount_in_stock > 0);
ALTER TABLE products
ADD COLUMN id SERIAL PRIMARY KEY;