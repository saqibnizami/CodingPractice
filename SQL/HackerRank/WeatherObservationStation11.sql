-- Basic Select : Weather Observation Station 11
-- https://www.hackerrank.com/challenges/weather-observation-station-11/problem
-- lang : mysql
-- prompt Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels.
-- Your result cannot contain duplicates.

SELECT DISTINCT(CITY)
FROM STATION 
WHERE CITY NOT REGEXP '^[aeiou]'
OR CITY NOT REGEXP '[aeiou]$'
