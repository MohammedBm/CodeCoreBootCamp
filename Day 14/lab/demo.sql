-- Create a record
INSERT INTO products(name, description, price, sale_price, remaining_quantity)
VALUES ('Hot Coffee', 'Black no Sugar', 5, 8, 77);

-- Select the last record
SELECT *
FROM products
ORDER BY ID DESC
LIMIT 1;

-- Select record with id
SELECT *
FROM products
WHERE id=246;

-- Update a specific record
UPDATE products
SET remaining_quantity = 39
WHERE id=246;

-- Delect a specific record
DELETE
FROM products
WHERE id=264;

-- Delect multiple records
DELETE
FROM products
WHERE id > 245;

-- Select the count using an aggregate function
SELECT COUNT(*) AS number_of_products
FROM products;
