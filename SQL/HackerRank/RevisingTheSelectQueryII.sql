-- Basic Select : Revising the Select Query II
-- https://www.hackerrank.com/challenges/revising-the-select-query-2/problem
-- lang: mysql
-- promt: Query the names of all American cities in CITY with populations larger than 120000. The CountryCode for America is USA.

SELECT NAME  
FROM (
    SELECT *
    FROM CITY
    WHERE POPULATION > 120000
    HAVING COUNTRYCODE = 'USA'
) as USCITIES
