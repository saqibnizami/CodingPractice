-- Basic Select : Weather Observation Station 7
-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem
-- lang : mysql
-- prompt : Query the list of CITY names ending with vowels(a, e, i, o, u) from STATION.
-- Your result cannot contain duplicates.

SELECT DISTINCT(CITY)
FROM STATION 
WHERE CITY REGEXP '[aeiou]$'
