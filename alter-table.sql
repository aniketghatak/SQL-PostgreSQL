SELECT * FROM person;


-- ADDING A COLUMN

ALTER TABLE person 
ADD COLUMN age INT;

--Setting values

UPDATE person
SET age=34 WHERE id=1;

UPDATE person
SET age=36 WHERE id=2;

UPDATE person
SET age=31 WHERE id=3;


-- changing name of column

ALTER TABLE person
RENAME COLUMN name TO f_name;


-- change data type of column

ALTER TABLE person
ALTER COLUMN f_name
SET DATA TYPE VARCHAR(150);