-- Basic Select : Weather Observation Station 9
-- https://www.hackerrank.com/challenges/weather-observation-station-9/problem
-- lang : mysql
-- prompt : Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates

SELECT DISTINCT(CITY)
FROM STATION 
WHERE CITY NOT REGEXP '^[aeiou]'
