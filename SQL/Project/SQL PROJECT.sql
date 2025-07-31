CREATE DATABASE airports_db;
USE airports_db;

CREATE TABLE airports (
    iata VARCHAR(10),
    title VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(50),
    country VARCHAR(50),
    latitude DECIMAL(10,6),
    longitude DECIMAL(10,6)
);

-- VIEW ALL RECORDS 
select * from airports;

-- SHOW ONLY AIRPORT NAMES AND CITIES 

-- COUNT TOTAL AIRPORTS
select count(title) as TOTAL_AIRPORTS from airports ;

-- SHOW ALL UNIQUE STATES 
select distinct state from airports ;

-- FIND ALL AIRPORTS LOCATED IN TX
select title from airports 
where state='TX';

-- FIND ALL AIRPORTS IN USA  
select title from airports
where country="USA";

-- SORT AIRPORTS ALPHABETICALLY BY CITY 
select title from airports
order by city asc ;

-- FIND AIRPORTS ABOVE LATITUDE 40 
select title from airports 
where latitude >40;

-- COUNT AIRPORTS PER STATE 
select state,count(*)as Total_Airports from airports
group by state
order by Total_Airports desc;

-- FIND AIRPORTS WITH INTERNATIONAL IN THIER NAME  
select * from airports 
where title like '%International%';

-- SHOW FIRST 10 RECORDS ONLY 
select * from airports  
limit 10;

-- FIND AIRPORTS WITH STARTING LETTER A 
SELECT * FROM airports
WHERE city LIKE 'A%';

-- FIND THE MOST NORTMOST ANS SOUTHMOST AIRPORT 
select max(latitude) as North_Most, 
min(latitude) as South_Most 
from airports ;

-- RENAME OUTPUT COLUMNS 
select title as Airport_name , city as Airport_city from airports ;

-- SHOW STATES HAVE MORE THAN 5 AIRPORTS  
SELECT state, COUNT(*) AS total_airports
FROM airports
GROUP BY state
HAVING COUNT(*) > 5;


