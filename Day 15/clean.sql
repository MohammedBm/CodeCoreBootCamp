-- good morning 19's

-- 1. look at the db diagram to see the structure
-- 2. get to know your data

-- students
-- courses
-- enrollments (students_courses)

--SELECT * FROM students LIMIT 10;
--SELECT * FROM courses LIMIT 10;
--SELECT * FROM enrolments LIMIT 10;

-- 3. Build a test case

--id	course_id	student_id	created_at	updated_at	score
--1	    33	        1	        2017-06-22 15:34:55.830942	2017-06-22 15:34:55.830942	71
--SELECT * FROM courses WHERE id = 33;
--SELECT title FROM courses WHERE id = 33; -- Optimized transitional frame
--SELECT * FROM students WHERE id = 1; -- first/last name: val you

-- JOIN, finding commonality

--students : id
--enrolments : id (primary)
--enrolments: student_id (foreign)

SELECT * FROM students
INNER JOIN enrolments
ON students.id = enrolments.student_id;

--students : id, first_name, last_name, age, registration_date
--enrolments: id, course_id, student_id

--students_enrolments table:
--id, first_name, last_name, age, registration_date, id, course_id, student_id

--SELECT students.first_name, students.last_name, enrolments.course_id
--FROM students
--INNER JOIN enrolments
--ON students.id = enrolments.student_id;
-- step 1: saw the map
-- step 2: get to know your data

--SELECT * FROM courses LIMIT 10;
--SELECT * FROM enrolments LIMIT 10;

--SELECT * FROM courses WHERE id = 33;
--Optimized transitional frame

--courses : id (primary)
--enrolments: course_id (foreign key)

--SELECT * FROM courses
--INNER JOIN enrolments
--ON courses.id = enrolments.course_id;

SELECT courses.title, enrolments.student_id FROM courses
INNER JOIN enrolments
ON courses.id = enrolments.course_id;


-- students have projects

--SELECT * FROM students LIMIT 10;
--SELECT * FROM projects LIMIT 10;


-- id	title	                        student_id	created_at	updated_at
-- 1	harness virtual applications	38	2017-06-22 15:34:27.84698	2017-06-22 15:34:27.84698

-- which student is id 38
-- SELECT * FROM students WHERE id = 38;
-- TOM Abernathy is student 38

-- students : id
-- projects :
SELECT students.first_name, students.last_name, projects.title
  FROM students
  INNER JOIN projects
  ON students.id = projects.student_id;

  -- MULTIPLE TABLE JOINS

  --SELECT * FROM enrolments LIMIT 10;

  -- student name, course title

  --students : id
  --enrolments : student_id

  --courses : id
  --enrolments : course_id

  --SELECT * FROM enrolments
  --INNER JOIN students ON students.id = enrolments.student_id
  --INNER JOIN courses ON courses.id = enrolments.course_id;

  SELECT students.first_name, students.last_name, courses.title FROM students
  INNER JOIN enrolments ON students.id = enrolments.student_id
  INNER JOIN courses ON courses.id = enrolments.course_id;
