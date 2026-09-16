CREATE SEQUENCE student_seq START WITH 1 INCREMENT BY 1;

CREATE TABLE students (student_id INT PRIMARY KEY, student_name VARCHAR(100), student_email VARCHAR(100));

INSERT INTO students (student_id, student_name, student_email)
VALUES (student_seq.NEXTVAL, 'Alice Johnson', 'alice@example.com');

INSERT INTO students (student_id, student_name, student_email)
VALUES (student_seq.NEXTVAL, 'Bob Smith', 'bob@example.com');

INSERT INTO students (student_id, student_name, student_email)
VALUES (student_seq.NEXTVAL, 'Charlie Brown', 'charlie@example.com');

CREATE VIEW student_view AS SELECT student_id, student_name, student_email FROM students;

INSERT INTO students (student_id, student_name, student_email)
VALUES (student_seq.NEXTVAL, 'Diana Prince', 'diana@example.com');

UPDATE students SET student_email = 'new_bob@example.com' WHERE student_name = 'Bob Smith';

DELETE FROM students WHERE student_name = 'Charlie Brown';

CREATE INDEX idx_student_email ON students (student_email);

