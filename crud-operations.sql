--CRUD Operations

--Creating a new table

CREATE TABLE person(
	id INT,
	name VARCHAR(100),
	city VARCHAR(100)
);

-- Inserting new values in a table

INSERT INTO person(id,name,city)
VALUES (1,'Tom','Mumbai'),
(2,'Ronaldo','Chennai'),
(3, 'Maria','Bangalore'),
(4,'Jerry','Delhi');


-- Read the table

SELECT * FROM person

SELECT id,name from person;

-- Updating the table

UPDATE person SET city='Pune'
WHERE id=4;


SELECT * FROM person;

-- Deleting from table

DELETE FROM person 
WHERE id=4;

SELECT * FROM person;



