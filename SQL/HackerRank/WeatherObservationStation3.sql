-- Basic Select : Weather Observation Station 3
-- https://www.hackerrank.com/challenges/weather-observation-station-3/problem
-- lang : mysql
-- prompt : Query a list of CITY names from STATION with even ID numbers only. 
-- You may print the results in any order, but must exclude duplicates from your answer.

SELECT DISTINT(CITY)
FROM(
    SELECT *
    FROM STATION 
    WHERE ID % 2 = 0
) as EVEN_ID