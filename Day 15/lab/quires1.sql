--
-- Assignment: [lab] Queries 1 Next Module
--
-- Using the SQL Lab tool: https://sql-lab.herokuapp.com/
--
-- Write the following SQL Queries:
--
-- 1. Find the average line_item total price (meaning quantity * price) for each order that were completed in January 2016 month.

  SELECT i.order_id, avg(i.price * i.quantity) as avg_price  FROM products as p
    INNER JOIN line_items as i ON p.id = i.product_id
    INNER JOIN orders as o ON o.id = i.order_id
    where completed_on BETWEEN '2016-01-01' AND '2016-01-31'
    group by i.order_id


-- 2. Select product titles, product prices and the lowest price they were sold at during the last month.
-- [Note] the total price in the line_items table is price per unit and not total price.
SELECT p.name, p.price, p.sale_price   FROM products as p
  INNER JOIN line_items as i ON p.id = i.product_id
  INNER JOIN orders as o ON o.id = i.order_id
WHERE o.completed_on BETWEEN '2016-05-23' AND now();
  
