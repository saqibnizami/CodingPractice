/*
Aggregation : Top Earners
https://www.hackerrank.com/challenges/earnings-of-employees/problem
*/

SELECT  months * salary as earnings,
        COUNT(employee_id)
FROM    Employee
GROUP BY
        earnings
ORDER BY
        earnings DESC
LIMIT 1
