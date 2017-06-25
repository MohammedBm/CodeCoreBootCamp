-- Assignment: [lab] Queries 3 Next Module
--
-- Using the SQL Lab tool: https://sql-lab.herokuapp.com/
--
-- Write the following SQL Queries:
--
-- 1.Select all the products that have been purchased in the last month.
SELECT * FROM products as p
  INNER JOIN line_items as i ON p.id = i.product_id
  INNER JOIN orders as o ON o.id = i.order_id
where completed_on BETWEEN '2017-04-23' AND now();
-- 2.Select the top 10 products in terms of last year's gross sales.
SELECT p.name, i.price * i.quantity as gross FROM products as p
  INNER JOIN line_items as i ON p.id = i.product_id
  INNER JOIN orders as o ON o.id = i.order_id
  where o.completed_on BETWEEN '2016-06-23' AND now()
ORDER BY gross DESC LIMIT 10;

-- 3.Select all the products that weren't purchased during the last month.
-- [Note] the price in the line_items table is price per unit and not total price.

SELECT p.name, i.price FROM products as p
  INNER JOIN line_items as i ON p.id = i.product_id
  INNER JOIN orders as o ON o.id = i.order_id
  where  o.completed_on BETWEEN '2017-05-01' AND '2017-05-31'
