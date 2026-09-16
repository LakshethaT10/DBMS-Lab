Create table Student (StudentID int, Name varchar(30), Age int);
Insert into Student values(1,’Alice’, 20);
Insert into Student values(2,'Bob', 22);
Insert into Student values(3,' Charlie', 21);
Insert into Student values(1,'David', 219);

Create table Courses (CourseID int, CourseName varchar(20));
Insert into Courses values (101, 'Database Management');
Insert into Courses values (102, 'Algorithms');
Insert into Courses values (103, 'Web Development');

Create table Enrollments (EnrollmentID int, StudentID int, CourseID int, Grade varchar(5));
Insert into Enrollments values(1,101,'A');
Insert into Enrollments values(1,102,'B');
Insert into Enrollments values(2,102,'A-');
Insert into Enrollments values(3,101,'B+');
Insert into Enrollments values(3,103,'A');
Insert into Enrollments values(4,103);

SELECT Student.StudentID, Student.Name, Student.Age, Courses.CourseID, Courses.CourseName, Enrollments.Grade FROM Student INNER JOIN Enrollments ON Student.StudentID = Enrollments.StudentID INNER JOIN Courses ON Enrollments.CourseID = Courses.CourseID;

SELECT Student.StudentID, Student.Name, Student.Age, Courses.CourseID, Courses.CourseName, Enrollments.Grade FROM Student LEFT JOIN Enrollments ON Student.StudentID = Enrollments.StudentID LEFT JOIN Courses ON Enrollments.CourseID = Courses.CourseID;

SELECT Student.StudentID, Student.Name, Student.Age, Courses.CourseID, Courses.CourseName, Enrollments.Grade FROM Courses RIGHT JOIN Enrollments ON Courses.CourseID = Enrollments.CourseID RIGHT JOIN Student ON Enrollments.StudentID = Student.StudentID;