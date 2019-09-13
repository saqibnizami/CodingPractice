/* 
Aggregation : Weather Observation Station 14
https://www.hackerrank.com/challenges/weather-observation-station-14/problem
*/

SELECT
    ROUND(LAT_N, 4) lat
FROM
    STATION
WHERE
    LAT_N < 137.2345
ORDER BY
    lat DESC
LIMIT 1