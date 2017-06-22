-- Assignment: [lab] Selecting Next Module
--
-- Using the SQL Lab tool: https://sql-lab.herokuapp.com/
--
-- Write the following SQL Queries:
--
-- From the students table:
--
-- 1 Select the first 10 students whose ages are between 35 and 45.
-- 2 Select the third set of 10 students whose ages are more than 25 and whose first names contain `th`. The students must be ordered by their id then first name in a descending order.
-- 3 Select the 10 oldest students (You should ignore students with an age that is `NULL`).
-- 4 Select all students with age 45 whose last names contain the letter n.
-- From the products table:
--
-- 5 Select all the products that are on sale.
-- 6 Select all the products that are on sale and have remaining items in stock ordered by the sale price in ascending order.
-- 7 Select all the products priced between 25 and 50 (regular price) and that are on sale.


--1
SELECT * from students
	WHERE age BETWEEN 35 AND 45
    OFFSET 10
    LIMIT 10;



--2
SELECT * from students
	WHERE age > 25 AND last_name LIKE '%e%'
	ORDER BY last_name DESC
    OFFSET 30
    LIMIT 10

--3
SELECT * FROM students
WHERE age IS NOT null
ORDER BY age DESC limit 10

--4
SELECT * FROM students
WHERE age = 45 and last_name LIKE '%n%'

--5
select * from products
	where sale_price > 1

--6
select * from products
	where sale_price > 1 and remaining_quantity > 0
    order By sale_price ASC
 --7
 select * from products
	where sale_price > 1 and price > 25 and price < 50
    order By sale_price ASC




    SELECT * from students
    	WHERE first_name Like 'Milton';




        SELECT first_name, count(first_name) as name_occ
        FROM students
        group by first_name
        having count(first_name) > 1
