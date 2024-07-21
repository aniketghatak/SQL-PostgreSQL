-- Various data types in a new table
CREATE TABLE employees(
	emp_id SERIAL PRIMARY KEY,
	f_name VARCHAR(50) NOT NULL,
	l_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL UNIQUE,
	dept VARCHAR(50),
	salary DECIMAL(10,2),
	hire_date DATE NOT NULL DEFAULT CURRENT_DATE
);

INSERT INTO employees(
	VALUES(1,'Priya','Sharma','ps@example.com','HR',50000,'2023-01-15'),
	(2,'Pooja','Desai','pd@example.com','Finance',54000,'2023-02-15'),
);

SELECT * FROM  employees;

INSERT INTO employees(
	VALUES(3,'Suman','Patel','sp@example.com','Finance',54000,'2023-07-15'),
	(4,'Rahul','Das','rd@example.com','Marketing',51000,'2023-01-15'),
	(5,'Anjali','Mehta','am@example.com','HR',54000,'2023-04-15')
);

SELECT * FROM  employees;

-- Update department of an employee

UPDATE employees
SET dept='Legal' 
	WHERE f_name='Rahul' AND emp_id=4;

SELECT * FROM employees;

