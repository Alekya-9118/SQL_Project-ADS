create database school;
use school;
CREATE TABLE Students (
  StudentID INT PRIMARY KEY,
  Name VARCHAR(255),
  MobileNumber VARCHAR(15),
  EmailAddress VARCHAR(255)
);

CREATE TABLE Courses (
  CourseID INT PRIMARY KEY,
  Name VARCHAR(255),
  Description VARCHAR(255),
  Credits INT
);

CREATE TABLE Grades (
  StudentID INT,
  CourseID INT,
  Grade VARCHAR(2),
  PRIMARY KEY (StudentID, CourseID),
  FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
  FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

INSERT INTO Students (StudentID, Name, MobileNumber, EmailAddress)
VALUES
  (101, 'John Smith', '1234567890', 'john.smith@example.com'),
  (102, 'Sarah Johnson', '9876543210', 'sarah.johnson@example.com'),
  (103, 'David Wilson', '5551234567', 'david.wilson@example.com'),
  (104, 'Emily Davis', '9998887776', 'emily.davis@example.com'),
  (105, 'Michael Brown', '1112223334', 'michael.brown@example.com');

INSERT INTO Courses (CourseID, Name, Description, Credits)
VALUES
  (1, 'Mathematics', 'Introduction to calculus', 3),
  (2, 'Computer Science', 'Fundamentals of programming', 4),
  (3, 'English Literature', 'American Romanticism', 3),
  (4, 'Physics', 'Mechanics and motion', 4),
  (5, 'History', 'World War II', 3);

INSERT INTO Grades (StudentID, CourseID, Grade)
VALUES
  (101, 1, 'A'),
  (101, 2, 'B+'),
  (102, 1, 'A-'),
  (102, 3, 'B'),
  (103, 2, 'A'),
  (103, 4, 'A-'),
  (104, 1, 'B+'),
  (104, 3, 'B'),
  (105, 2, 'B'),
  (105, 5, 'A');
CREATE TABLE Enrollments (
  StudentID INT,
  CourseID INT,
  EnrollmentDate DATE,
  PRIMARY KEY (StudentID, CourseID),
  FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
  FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

INSERT INTO enrollments (StudentID, CourseID, EnrollmentDate)
VALUES

  (101, 1, '2023-07-01'),
  (101, 2, '2023-07-02'),
  (102, 1, '2023-07-03'),
  (102, 3, '2023-07-04'),
  (103, 2, '2023-07-05'),
  (103, 4, '2023-07-06'),
  (104, 1, '2023-07-07'),
  (104, 3, '2023-07-08'),
  (105, 2, '2023-07-09'),
  (105, 5, '2023-07-10');
  drop table enrollments;
  --- query 1
  select * from students where studentId=101;
  --- updating grades
  update Grades set grade='A' where studentId=101 and courseId=2;
  select * from Grades;
  SELECT Name, Emailaddress FROM students WHERE StudentID = 101;
  SELECT students.Name 
	FROM students
	INNER JOIN enrollments ON students.StudentID = enrollments.studentID
	WHERE enrollments.CourseId = 4;
    SELECT courses.Name 
FROM courses
INNER JOIN enrollments ON courses.id = enrollments.course_id
WHERE enrollments.teacher_id = 5;
select courseID,credits from courses;
SELECT COUNT(*) AS total_students FROM students;
SELECT courses.courseID 
FROM courses
INNER JOIN enrollments ON courses.courseID = enrollments.courseID
WHERE enrollments.studentid = 1;
select * from enrollments;
  
