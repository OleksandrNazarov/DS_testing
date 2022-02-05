select COLUMN1, COLUMN2, ... from TABLE1 ;
select * from COUNTRY;
select * from COUNTRY where ID < 5 ;
SELECT COUNT(*) FROM FilmLocations;
SELECT COUNT(Locations) FROM FilmLocations WHERE Writer="James Cameron";
SELECT DISTINCT Title FROM FilmLocations;
SELECT COUNT(DISTINCT ReleaseYear) FROM FilmLocations WHERE ProductionCompany="Warner Bros. Pictures";
SELECT * FROM FilmLocations LIMIT 25;
SELECT * FROM FilmLocations LIMIT 15 OFFSET 10;

INSERT INTO Instructor(ins_id, lastname, firstname, city, country)
VALUES(4, 'Saha', 'Sandip', 'Edmonton', 'CA');

INSERT INTO Instructor(ins_id, lastname, firstname, city, country)
VALUES(5, 'Doe', 'John', 'Sydney', 'AU'), (6, 'Doe', 'Jane', 'Dhaka', 'BD');

UPDATE Instructor 
SET city='Toronto' 
WHERE firstname="Sandip";

UPDATE Instructor 
SET city='Dubai', country='AE' 
WHERE ins_id=5;

DELETE FROM instructor
WHERE ins_id = 6;


create table COUNTRY (
ID  int NOT NULL,
CCODE char(2),
NAME varchar(50),
PRIMARY KEY(ID)
);

In the above example the ID column has the 
NOT NULL constraint added after the datatype - 
meaning that it cannot contain a NULL or an empty
value. If you look at the last row in the create
table statement above you will note that we are 
using ID as a Primary Key and the database does 
not allow Primary Keys to have NULL values. A Primary 
Key is a unique identifier in a table, and using Primary 
Keys can help speed up your queries significantly. If the table you are trying
to create already exists in the database, you will get an error indicating table
XXX.YYY already exists. To circumvent this error, either create a table with a
different name or first DROP the existing table. It is quite common to issue a
DROP before doing a CREATE in test and development scenarios.

drop table COUNTRY;

ALTER TABLE table_name
ADD COLUMN column_name data_type column_constraint;

ALTER TABLE table_name
DROP COLUMN column_name;

ALTER TABLE table_name
ALTER COLUMN column_name SET DATA TYPE data_type;

ALTER TABLE table_name
RENAME COLUMN current_column_name TO new_column_name;

TRUNCATE TABLE table_name;

DROP TABLE table_name;

ALTER TABLE PETSALE
ADD COLUMN QUANTITY INTEGER;

ALTER TABLE PETSALE
DROP COLUMN PROFIT;

ALTER TABLE PETSALE
ALTER COLUMN PET SET DATA TYPE VARCHAR(20);

ALTER TABLE PETSALE
RENAME COLUMN PET TO ANIMAL;

TRUNCATE TABLE PET IMMEDIATE;

DROP TABLE PET;

SELECT F_NAME , L_NAME
FROM EMPLOYEES
WHERE ADDRESS LIKE '%Elgin,IL%';

SELECT F_NAME , L_NAME
FROM EMPLOYEES
WHERE B_DATE LIKE '197%';

SELECT *
FROM EMPLOYEES
WHERE (SALARY BETWEEN 60000 AND 70000) AND DEP_ID = 5;

SELECT F_NAME, L_NAME, DEP_ID 
FROM EMPLOYEES
ORDER BY DEP_ID;

SELECT F_NAME, L_NAME, DEP_ID 
FROM EMPLOYEES
ORDER BY DEP_ID DESC, L_NAME DESC;

SELECT DEP_ID, COUNT(*)
FROM EMPLOYEES
GROUP BY DEP_ID;

SELECT DEP_ID, COUNT(*), AVG(SALARY)
FROM EMPLOYEES
GROUP BY DEP_ID;

SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID;

SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID
ORDER BY AVG_SALARY;

SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID
HAVING count(*) < 4
ORDER BY AVG_SALARY;