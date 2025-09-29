-- Step 1: Create a new database
CREATE DATABASE WorldDB;

-- Step 2: Use the database
USE WorldDB;

-- Step 3: Create the CITY table
CREATE TABLE CITY (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(17) NOT NULL,
    COUNTRYCODE VARCHAR(3) NOT NULL,
    DISTRICT VARCHAR(20),
    POPULATION INT
);

-- Insert 15 sample rows into CITY table
INSERT INTO CITY (NAME, COUNTRYCODE, DISTRICT, POPULATION) VALUES
('New York', 'USA', 'New York', 8419600),
('Los Angeles', 'USA', 'California', 3980400),
('Chicago', 'USA', 'Illinois', 2716000),
('Houston', 'USA', 'Texas', 2328000),
('Phoenix', 'USA', 'Arizona', 1690000),
('Philadelphia', 'USA', 'Pennsylvania', 1584200),
('San Antonio', 'USA', 'Texas', 1547200),
('San Diego', 'USA', 'California', 1423800),
('Dallas', 'USA', 'Texas', 1341000),
('San Jose', 'USA', 'California', 1035300),
('Austin', 'USA', 'Texas', 964200),
('Jacksonville', 'USA', 'Florida', 902500),
('Columbus', 'USA', 'Ohio', 898000),
('Indianapolis', 'USA', 'Indiana', 876400),
('San Francisco', 'USA', 'California', 873965);

-- 1 Basic filter question
-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. (CountryCode for America is USA).
select name from city where (countrycode = 'USA' and population > 120000);

-- 2 Top cities by population
-- Write an SQL query to display the top 5 most populated cities in the USA.
select name,population 
 from city 
 where countrycode= 'USA'
 order by population desc
 limit 3;

-- 3 District-based filtering
-- Find all cities in the California district with a population greater than 500000.

SELECT NAME, POPULATION
FROM CITY
WHERE COUNTRYCODE = 'USA' AND DISTRICT = 'California' AND POPULATION > 500000;

-- 4 Sorting results
-- Query the NAME and POPULATION of cities in the USA and order them by POPULATION in descending order.

select name ,population 
from city 
where countrycode = 'USA' 
order by population desc limit 3;

-- 5 Range condition
-- 👉 Retrieve the names of all cities in the USA where the population is between 100000 and 500000.
select name,population 
from city 
where population >100000 and 500000;

-- we can use between also 
select name,population 
from city 
where countrycode = 'USA' and population between 100000 and 500000;
-- 6 Counting cities
-- 👉 Write a query to count how many cities in the USA have populations greater than 1,000,000.

select name,population 
from city 
where population >100000;


-- 7 Pattern matching
-- 👉 Find all cities in the USA whose NAME starts with 'S'.
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'USA' AND NAME LIKE 'S%';

-- 8  Multiple conditions
-- 👉 Query the NAME and DISTRICT of cities in the USA where the population > 800000 and the DISTRICT = 'New York'.
select name,district
from city 
where countrycode = 'USA' and population >800000 and district ='newyork';

SELECT NAME, DISTRICT
FROM CITY
WHERE COUNTRYCODE = 'USA' AND DISTRICT = 'New York' AND POPULATION > 800000;
