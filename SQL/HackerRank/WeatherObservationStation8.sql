-- Basic Select : Weather Observation Station 8
-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem
-- lang : mysql
-- prompt : Query the list of CITY names from STATION which have vowels (a,e, i, o, u) as both their first and last characters
-- Your results cannot contain duplicates

SELECT DISTINCT(CITY)
FROM STATION 
WHERE CITY REGEXP '^[aeiou]'
AND CITY REGEXP '[aeiou]$'
