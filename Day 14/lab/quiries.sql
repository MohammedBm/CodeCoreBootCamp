--
--
-- Assignment: [Lab] Queries Next Module
--
-- Using the SQL Lab tool: https://sql-lab.herokuapp.com/
--
-- Write the following SQL Queries:
--
-- For the products table:
--
-- Select the product whose stock has the most value (use sale price)
-- Select the most expensive product whose price is between 25 and 50 with remaining quantity
-- Select all products on sale with remaining quantity ordered by their price and then their name
-- Select the second set 20 results based on the previous query
-- Find the average price of all products
-- Find the average price of all products that are on sale
-- Find the average price of all products that are on sale with remaining quantity
-- Update all the products whose name contains `paper` (case insensitive) to have a remaining quantity of 0
-- Is it possible to revert the query in question 8?
-- Update all the products whose name contains `paper` or `steel` to have a remaining quantity of a random number between 5 and 25
-- Select the second set of 10 cheapest products with remaining quantity
-- Build a query that groups the products by their sale price and show the number of products in that price and the sum of remaining quantity. Label the count `product_count`
-- [stretch] Update the most expensive product to have double its quantity in a single query

        select * from products
        where price BETWEEN 25 AND 50 and remaining_quantity > 0
        ORDER BY price DESC
        limit 1


        select * from products
        where sale_price > 0 and remaining_quantity>0
        ORDER BY sale_price   DESC


        select * from products
        where sale_price > 0 and remaining_quantity>0
        ORDER BY sale_price DESC
        offset 20 limit 20

        SELECt
        	avg(price) as average
        from products

        select round(avg(price)) as average_price
        from productts
        where price>sale_price

        select avg(price)  from products
           where price > sale_price and remaining_quantity > 0

           UPDATE products
           	set remaining_quantity =  0
            WHERE name ILIKE  '%paper%'


            select * from products
            where price > 0  and remaining_quantity	 > 0
            order by price asc
            offset 10
            limit 10



select sum (sale_price) as sum_price , sum (remaining_quantity) as Sum_quantity from products


UPDATE products SET
remaining_quantity = ((SELECT remaining_quantity FROM products WHERE remaining_quantity > 0 ORDER BY price DESC LIMIT 1)*2)
WHERE id =
(SELECT id FROM products WHERE remaining_quantity > 0 ORDER BY price DESC LIMIT 1) ;
