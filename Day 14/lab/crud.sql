-- Q
-- Using the SQL Lab tool: https://sql-lab.herokuapp.com/
--
-- Write the following SQL Queries:
--
-- Create a student record with the following attributes: first_name: John, last_name: Smith, Age: 45, email: john@smith.com registration_date: January 1st 2016, phone_number: 778.778.7787
-- Select that student from the database be fetching the last record
-- Using the id you fetched from the previous exercise, update the age of that record to become 50
-- Delete that record using its id


INSERT INTO students(first_name, last_name, email, phone_number, age, registration_date,created_at,updated_at)
VALUES ('Mohamed', 'Bamhrz', 'eg@gmail.com', 778-23-32122, 96, current_date, current_date, current_date);


SELECT *
FROM students
ORDER BY ID DESC
offset 4
LIMIT 1;


UPDATE students
SET age	 = 50
WHERE id=275;


SELECT *
FROM students
where id= 275


DELETE
FROM students
WHERE id=275;
