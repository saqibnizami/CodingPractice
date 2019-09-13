-- Basic Select : Weather Observation Station 12
-- https://www.hackerrank.com/challenges/weather-observation-station-12/problem
-- lang : mysql
-- prompt : Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. -- 
-- Your result cannot contain duplicates.

SELECT DISTINCT(city)
FROM station
WHERE city NOT REGEXP '^[aeiou]'
AND city NOT REGEXP '[aeiou]$'