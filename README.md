1.Retrieve the name and email of a specific student with ID 101:
SELECT name, email FROM students WHERE id = 1;
------------------
2.Retrieve the list of enrolled students for a specific course with ID 104:
SELECT students.name 
FROM students
INNER JOIN enrollments ON students.id = enrollments.student_id
WHERE enrollments.course_id = 4;
-------------------
3.Retrieve the list of courses taught by a specific teacher with ID 5:
SELECT courses.title 
FROM courses
INNER JOIN enrollments ON courses.id = enrollments.course_id
WHERE enrollments.teacher_id = 5;
-------------------
4.Finding credits of each course
select courseID,credits from courses;
------------------
5.Retrieve the total number of students:
SELECT COUNT(*) AS total_students FROM students;
------------------
5.Retrieve the courses taken by a specific student with ID 101:
SELECT courses.courseID 
FROM courses
INNER JOIN enrollments ON courses.courseID = enrollments.courseID
WHERE enrollments.studentid = 1;
select * from enrollments;

