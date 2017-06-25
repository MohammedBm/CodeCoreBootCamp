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

SELECT * FROM courses
INNER JOIN enrolments
ON courses.id = enrolments.course_id;

SELECT courses.title, enrolments.student_id FROM courses
INNER JOIN enrolments
ON courses.id = enrolments.course_id;


--step 1; saw the map
--step 2 ; egt know your data


--SELECT * FROM courses LIMIT 10
--SELECT * FROM enrolments LIMIT 10

--SELECT * FROM courses WHERE id = 33;
--Optimized transitional frame

--course : id (primiary)
--enrolments: course_id(foreign_key)
--SELECT * FROM courses
--INNER JOIN enrolments
--ON courses.id = enrolments.course_id;

SELECT  students.id,students.first_name,students.last_name,projects.title,enrolments.score FROM projects
INNER JOIN students
ON students.id = projects.student_id
order by id ASC


SELECT  * FROM students
INNER JOIN projects ON students.id = projects.student_id



SELECT students.id,students.first_name,students.last_name, courses.title as course_title,projects.title AS project_title,enrolments.score FROM students
INNER JOIN enrolments ON students.id = enrolments.student_id
INNER JOIN courses ON courses.id = enrolments.course_id
INNER JOIN projects ON students.id = projects.student_id
order by id ASC;

SELECT s.id, s.first_name, s.last_name,s.email, COUNT(*) AS num_projects FROM students as s
INNER JOIN projects AS p ON s.id  = p.student_id
group by s.id


--SELECT s.first_name, s.last_name, p.title FROM students as s
--INNER JOIN enrolments as e ON s.id = e.student_id
--INNER JOIN courses as c ON c.id = e.course_id
--INNER JOIN projects as p ON s.id = p.student_id

--SELECT s.id, s.first_name, s.last_name,s.email  FROM students as s
--INNER JOIN projects AS p ON s.id  = p.student_id
--where p.title = 'Up-sized hyprid project'

--Customer-focused content-based moratorium	 id 1

--select * from students
--select * from courses
--select * from enrolments

--students enrolling in id 1 2,50,191,198,208,233


--select s.first_name, s.last_name, c.title from students AS s
--INNER JOIN enrolments AS e ON s.id = e.student_id
--INNER JOIN courses AS c  ON c.id = e.course_id
--where c.id = 1



-----




--SELECT c.id,c.title, round(avg(e.score), 2) AS avg_score from courses as c
--INNER JOIN enrolments as e ON c.id = e.course_id
--GROUP by c.id
--order by c.id ASC

SELECT  e.course_id ,c.title, COUNT(*) FROM students AS s
INNER JOIN enrolments as e ON s.id = e.student_id
INNER JOIN courses AS c ON c.id = e.course_id
GROUP by c.title, e.course_id
