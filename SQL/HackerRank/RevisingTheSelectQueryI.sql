-- Basic Select : Revising the Select Query I
-- https://www.hackerrank.com/challenges/revising-the-select-query/problem
-- lang: mysql

SELECT *
FROM CITY
WHERE POPULATION > 100000
HAVING COUNTRYCODE = 'USA'