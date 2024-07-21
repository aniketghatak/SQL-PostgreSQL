SELECT * FROM employees;


-- adding salary category using CASE 
SELECT f_name,salary,
CASE
	WHEN salary<=56000 THEN 'High'
	WHEN salary BETWEEN 56000 AND 75000 THEN 'Mid'
	ELSE 'Low'
END AS sal_cat
FROM
	employees;


-- adding a bonus section using CASE

SELECT f_name, salary,
CASE 
	WHEN salary>0 THEN ROUND(salary*0.10)
END AS Bonus
FROM employees;


