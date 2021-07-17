/*
610. Triangle Judgement
Easy

159

34

Add to List

Share
SQL Schema
A pupil Tim gets homework to identify whether three line segments could possibly form a triangle.


However, this assignment is very heavy because there are hundreds of records to calculate.


Could you help Tim by writing a query to judge whether these three sides can form a triangle, assuming table triangle holds the length of the three sides x, y and z.


| x  | y  | z  |
|----|----|----|
| 13 | 15 | 30 |
| 10 | 20 | 15 |
For the sample data above, your query should return the follow result:
| x  | y  | z  | triangle |
|----|----|----|----------|
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |

 */

-- SQL SCHEMA
Create table if not exists triangle (x int, y int, z int);
Truncate table triangle;
insert into triangle (x, y, z) values ('13', '15', '30');
insert into triangle (x, y, z) values ('10', '20', '15');

--SOLUTION
select
        *
        , case when (x + y > z) and (x + z > y) and (y + z > x) then 'Yes'
                else 'No'
            end as triangle
from triangle;

-- EXPLANATION
-- the sum of any two sides of a triangle are greater than the remaining side
