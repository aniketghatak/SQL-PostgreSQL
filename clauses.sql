SELECT * FROM employees;

-- check salary of an employee

SELECT salary from employees 
WHERE emp_id=4;

-- check the details of HR employees

SELECT * FROM employees 
WHERE dept= 'HR';

-- check the average salary of HR employees

SELECT ROUND(AVG(salary),2) AS Average_Salary_HR FROM employees 
WHERE dept= 'HR';

-- check the details of employees where salary is more than 53000 and department is HR

SELECT * FROM employees 
WHERE salary>53000 AND dept='HR';

-- check the details of employees where salary is more than 52500 and department is HR and Finance

SELECT * FROM employees 
WHERE salary>52500 AND dept IN ('Finance','HR');

-- check the details of employees where salary is between 50500 and 56000

SELECT * FROM employees 
WHERE salary BETWEEN 50500 AND 56000;

-- Distinct Departments

SELECT DISTINCT(dept) AS DEPARTMENTS FROM employees;

-- Order BY

SELECT * FROM employees
ORDER BY f_name;

-- Salary in ascending order

SELECT * FROM employees
ORDER BY salary ASC;

-- Lowest paid Employees

SELECT * FROM employees
ORDER BY salary ASC LIMIT 1;

-- Oldest Employee

SELECT * FROM employees
ORDER BY hire_date ASC LIMIT 1;

-- Recent Employee

SELECT * FROM employees
ORDER BY hire_date DESC LIMIT 1;
