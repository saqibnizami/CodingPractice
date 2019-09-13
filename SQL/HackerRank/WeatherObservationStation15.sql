/*
Aggregation : Weather Observation Station 15
https://www.hackerrank.com/challenges/weather-observation-station-15/problem
*/

SELECT
    l.lon
FROM(
    SELECT
        ROUND(LAT_N, 4) lat,
        ROUND(LONG_W, 4) lon
    FROM
        STATION
    WHERE
        LAT_N < 137.2345
    ORDER BY
        lat DESC
    LIMIT 1) l

/* ALT SOLUTION 
1. cast the londitude as a decimal to 4 places.
2. use WHERE to restrict lat using a subquery to the max lat less than 137.2345
*/
SELECT
    CAST(LONG_W AS DECIMAL(9,4))
FROM 
    STATION
WHERE
    LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345)
