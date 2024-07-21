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
	VALUES(1,'Priya','Sharma','ps@example.com','HR',57000,'2023-01-15'),
	(2,'Pooja','Desai','pd@example.com','Finance',54400,'2023-02-15'),
	(3,'Suman','Patel','sp@example.com','Finance',44000,'2023-07-15'),
	(4,'Rahul','Das','rd@example.com','Marketing',71000,'2023-01-15'),
	(5,'Anjali','Mehta','am@example.com','HR',84000,'2023-04-15'),
	(6,'John','Mishra','jm@example.com','Finance',81000,'2023-07-15'),
	(7,'Raj','Patel','rp@example.com','Marketing',94000,'2023-01-15'),
	(8,'Ankita','Mishra','anm@example.com','HR',96000,'2023-04-15')
);


-- Total Employees
SELECT COUNT(emp_id) AS Total_Employees FROM employees;


-- Total Salary of all employees

SELECT SUM(salary) AS Total_Salary from employees;

-- employee with minimum  salary  

SELECT MIN(salary) AS minimum_salary FROM employees;

-- Average Salary of all employees

SELECT ROUND(AVG(salary),2) AS average_salary FROM employees;

-- Group by department

SELECT dept FROM employees GROUP BY dept;

-- Count the number of people in each department

SELECT dept, count(*) FROM employees GROUP BY dept;

-- Sum of salaries of all departments

SELECT dept, SUM(salary) FROM employees GROUP BY dept;






