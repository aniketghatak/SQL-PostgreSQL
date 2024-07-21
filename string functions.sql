SELECT * FROM employees;

-- concatenation

SELECT CONCAT(f_name,l_name) AS full_name
FROM employees;


-- concat_ws
SELECT emp_id, CONCAT_WS(' ', f_name,l_name) AS Full_Name, dept 
FROM employees;

-- first 4 letters
SELECT SUBSTR(employees.f_name,1,4) FROM employees;


-- Replace HR to Human Resources

SELECT REPLACE(dept,'HR','Human Resources') FROM employees;


-- length function

SELECT * FROM employees WHERE LENGTH(f_name)>5 ;