-- Basic Select : Weather Observation Station 5
-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem
-- lang : mysql
-- prompt : Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths
-- (i.e.: number of characters in the name). If there is more than one smallest or largest city, 
-- choose the one that comes first when ordered alhabetically.

SELECT *
FROM ( 
    SELECT CITY, LENGTH(CITY)
    FROM STATION 
    ORDER BY LENGTH(CITY), CITY
    LIMIT 1
) as top 
UNION 
SELECT *
FROM ( 
    SELECT CITY, LENGTH(CITY)
    FROM STATION 
    ORDER BY LENGTH(CITY) DESC, CITY
    LIMIT 1
) as bottom
