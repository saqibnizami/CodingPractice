-- Revising Aggregations - The Sum Function
-- https://www.hackerrank.com/challenges/revising-aggregations-sum/problem?h_r=next-challenge&h_v=zen

select sum(population)
from city
where district = 'California';