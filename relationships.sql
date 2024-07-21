CREATE DATABASE institute;

CREATE TABLE students(
	s_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE courses(
	c_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	fee NUMERIC NOT NULL
);

CREATE TABLE enrollment(
	enrollment_id SERIAL PRIMARY KEY,
	s_id INT NOT NULL,
	c_id INT NOT NULL,
	enrollment_date DATE NOT NULL,
	FOREIGN KEY (s_id) REFERENCES students(s_id),
	FOREIGN KEY (c_id) REFERENCES courses(c_id)
);


INSERT INTO students (name) VALUES
('Rohit'),
('Raj'),
('Maria');

INSERT INTO courses (name,fee) VALUES
('Science',5000),
('Arts',2500),
('Commerce',3500);


INSERT INTO courses (name,fee) VALUES
('Science',5000),
('Arts',2500),
('Commerce',3500);

INSERT INTO enrollment (s_id,c_id,enrollment_date) VALUES
(1,1,'2024-01-01'),
(1,2,'2024-01-15'),
(2,1,'2024-02-01'),
(2,3,'2024-02-14'),
(3,3,'2024-03-02');

SELECT * FROM students;

SELECT * FROM courses;

SELECT * FROM enrollment;

SELECT s.name, c.name, c.fee, e.enrollment_date FROM enrollment e
JOIN students s ON e.s_id =s.s_id
JOIN courses c ON c.c_id = e.c_id; 


