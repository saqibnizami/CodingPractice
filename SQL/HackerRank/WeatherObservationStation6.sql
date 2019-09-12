-- Basic Select : Weather Observation Station 6
-- https://www.hackerrank.com/challenges/weather-observation-station-6/problem
-- lang : mysql
-- prompt : Query the list of CITY names starting with vowels (i.e. a, e, i, o, u) from STATION
-- Your result cannot contain duplicates.

SELECT CITY
FROM STATION 
WHERE CITY REGEXP '^[aeiou]'
-- note : I chose to use regex to practice it. LIKE can also be used.
