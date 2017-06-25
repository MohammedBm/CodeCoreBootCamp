-- Assignment: [lab] Queries 2 Next Module
--
-- Using the SQL Lab tool: https://sql-lab.herokuapp.com/
--
-- Write the following SQL Queries:
--
-- 1. Calculate how many items in stock we've ever had for products (remaining or sold) in the database.
  SELECT p.name , sum(i.quantity + p.remaining_quantity)FROM products as p
    INNER JOIN line_items as i ON p.id = i.product_id
    INNER JOIN orders as o ON o.id = i.order_id
    GROUP BY p.name
    order by SUM DESC;
-- 2. Find the average order total price for all the orders in the system
-- [Note] the price in the line_items table is price per unit and not total price.
SELECT avg(i.price * i.quantity) as avg_price FROM products as p
  INNER JOIN line_items as i ON p.id = i.product_id
  INNER JOIN orders as o ON o.id = i.order_id
