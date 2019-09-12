-- Basic Select : Japanese Cities' Names
-- https://www.hackerrank.com/challenges/japanese-cities-name/problem
-- lang : mysql
-- prompt : Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

SELECT NAME 
FROM (
    SELECT *
    FROM CITY
    WHERE COUNTRYCODE = 'JPN'
) as JPNCITIES