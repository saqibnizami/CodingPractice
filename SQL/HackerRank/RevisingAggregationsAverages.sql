-- Revising Aggregations - Averages
--https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

select avg(population)
from city
where district = 'California'
