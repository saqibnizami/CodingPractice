-- Basic Select : Weather Observation Station 4
-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem
-- lang : mysql
-- prompt: Let N be the number of CITY entries in STATION, and let N' be the number of distinct
-- CITY names in STATION; query the value of N - N' from STATION. In other words, find the difference 
-- between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

SELECT COUNT(CITY) - COUNT(DISTINCT(CITY))
FROM STATION