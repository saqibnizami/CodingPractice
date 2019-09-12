-- Basic Select : Japanese Cities' Attributes
-- https://www.hackerrank.com/challenges/japanese-cities-attributes/problem
-- lang : mysql
-- prompt : Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN'