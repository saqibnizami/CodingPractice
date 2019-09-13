-- Basic Select : Weather Observation Station 10
-- https://www.hackerrank.com/challenges/weather-observation-station-10/problem
-- lang : mysql
-- prompt : Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates

SELECT DISTINCT(CITY)
FROM STATION 
WHERE CITY NOT REGEXP '[aeiou]$'