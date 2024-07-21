CREATE DATABASE store_database;

CREATE TABLE customers(
	cust_id SERIAL PRIMARY KEY,
	cust_name VARCHAR(100) NOT NULL
);


CREATE TABLE orders(
	ord_id SERIAL PRIMARY KEY,
	ord_date DATE NOT NULL,
	price NUMERIC NOT NULL,
	cust_id INTEGER NOT NULL,
	FOREIGN KEY (cust_id) REFERENCES 
	customers (cust_id)
)


INSERT INTO customers(cust_name)
VALUES 
('Raju'),('Rohit'),('Hardik'),('Mainak'),('Pooja');

INSERT INTO orders(ord_date,cust_id,price)
VALUES 
	('2023-01-01',1,250),
	('2023-01-14',1,345),
	('2023-01-07',2,456),
	('2023-01-05',3,263),
	('2023-01-07',2,463);

SELECT * FROM orders;

SELECT * FROM customers;


--cross join

SELECT * FROM customers CROSS JOIN orders;

-- inner Join

SELECT * FROM customers c
	INNER JOIN orders o
	ON c.cust_id=o.cust_id;

-- Counting the number of orders
SELECT c.cust_name, SUM(o.price) FROM customers c
	INNER JOIN orders o
	ON c.cust_id=o.cust_id
	GROUP BY cust_name;



-- calculating the total value of orders
SELECT c.cust_name, COUNT(o.ord_id) FROM customers c
	INNER JOIN orders o
	ON c.cust_id=o.cust_id
	GROUP BY cust_name;

-- Left join

SELECT * FROM customers c
	LEFT JOIN orders o
	ON c.cust_id=o.cust_id;

-- Right join

SELECT * FROM customers c
	RIGHT JOIN orders o
	ON c.cust_id=o.cust_id;



