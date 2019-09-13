-- Basic Select : Higher than 75 Marks
-- https://www.hackerrank.com/challenges/more-than-75-marks/problem
-- lang : mysql
-- prompt : Query the Name of any student in STUDENTS who scored higher than 75 Marks. 
-- Order your output by the last three characters of each name. 
-- If two or more students both have names ending in the same last three characters 
-- (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY SUBSTR(Name, -3,3), ID ASC