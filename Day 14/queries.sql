-- every thing was tested in this console
--all of these command below can be tested this follwing website
-- https://sql-lab.herokuapp.com/home



-- select students whos id are larger than 100
SELECT * FROM students WHERE id > 100;



-- print students whos older than 40
SELECT * FROM students WHERE age > 40;


-- Select dates in the last 20 days
SELECT * FROM students WHERE registration_date >= current_date - 20;
SELECT * FROM students WHERE registration_date >= '2017-06-02';
SELECT * FROM students WHERE registration_date >= (now() - interval '20 days');
SELECT * FROM students WHERE registration_date BETWEEN '2017-06-02' AND now();


-- select all students between id 100 and 200
SELECT * from students
	WHERE id >100 and id <200;


-- select all sttudents whose ages are more than 40 or less than 20
SELECT * from students
	WHERE age > 20  and age <40;


-- select all students whose ages were not set
SELECT * from students
	WHERE age IS null

-- select all sudents whose ages are not set as null
SELECT * from students
	WHERE age IS null
-- select all students whose age is set less than 20 or null
SELECT * from students
	WHERE age IS null OR age < 20



  -- When using a query with LIKE, specify parts of the word
  -- that are not considered the match with %
-- select all students whose first name start with Jo (case senstive)
SELECT * from students
	WHERE first_name LIKE 'Jo%';
-- will out put all the students whose first name starts with Jo


--find all stdudents whose last name contain the letters 'jo'
SELECT * from students
	WHERE last_name ILIKE '%Jo%';


--find all studesnt whose last name end with 'on'
SELECT * from students
	WHERE first_name Like '%on';



  SELECT * from students
  	WHERE age BETWEEN 25 AND 35
-- BETWEEN is inclusive, it is similar to
SELECT * from students
  WHERE age >= 25 AND age <=35


-- select all students that have registered between 20 days ago and 25 days ago
SELECT * from students
	WHERE registration_date BETWEEN current_date - 25  AND current_date -20


--find all studetns whose first name start with "Jo" and sort them by the last name
SELECT * from students
	WHERE first_name ILIKE 'Jo%'
  ORDER  BY 	last_name ASC, age;

-- find students whose age are more than 30 ordered by their first names than last name
SELECT * from students
	WHERE age > 30
  ORDER  BY first_name ,last_name;
-- SELECT the first 10 students
SELECT * from students LIMIT 10


-- select the first 10 students whose first names start with 'ke'
SELECT * from students
	where first_name Like 'Ke%' LIMIT 10

-- SELECT THE FIRST 10 STUDENTS AFTER 20
SELECT * from students OFFSET  20 LIMIT 10

--select the second set of 20 students whose age are more than 25
SELECT * from students
	WHERE age > 25
    OFFSET 20
    LIMIT 20;



--use AS in a select alias columns returend from query to different names
-- get the numbers of students whose age is bigger than 25
SELECT count (*) AS students_count FROM students WHERE age > 25



-- this code below will show the students count and the sum of the students age
SELECT count (*) AS students_count, sum (age) As total_years FROM students
-- Results
-- students_count	total_years
-- 263	                11243



-- find out the sum of all students ids in the database
SELECT sum (id) As total_id FROM students
-- Results
-- total_id
-- 34726


--some stastic
SELECT
  count(*) AS student_count,
  sum(age) AS total_age,

FROM students;


--find out the average age of students who registered after jan 1st 2017wh
SELECT avg(age) from students
	where registration_date
		BETWEEN '2017-01-01' AND now();


-- find out the maximum age of all students whose names begin with j
SELECT
	max(age)
    from students
    where first_name LIKE 'J%'


-- group up first names and print the occurences of the name in the list
		SELECT first_name,
			COUNT(first_name)
		    AS first_name_occur
		    FROM students
		    GROUP BY first_name
		    ORDER by first_name_occur DESC


-- update the name of certien studentds by id
SELECT * FROM students LIMIT 2;
update students
set first_name = 'TOM'
where id = 2;


SELECT first_name, count(first_name) AS first_name_occurences FROM students
GROUP BY first_name ORDER BY first_name_occurences DESC;

-- Be careful when using UPDATE or DELETE without a WHERE filter.
-- It will operate on all values in the table.
UPDATE students
  SET (first_name, last_name, age) = ('Ron', 'Burgundy', 50)
  WHERE id = 2;

DELETE FROM students
  WHERE id = 20;
