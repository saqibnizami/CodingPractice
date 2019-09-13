-- Advanced Select : New Companies
-- https://www.hackerrank.com/challenges/the-company/problem
-- prompt : Given the table schemas below, write a query to print the company_code, 
-- founder name, total number of lead managers, total number of senior managers, 
-- total number of managers, and total number of employees. 
-- Order your output by ascending company_code.

SELECT  j.company_code,
        c2.founder,
        j.lcount,
        j.scount,
        j.mcount,
        j.ecount
FROM(
    SELECT  c.company_code,
            COUNT(DISTINCT(l.lead_manager_code)) lcount,
            COUNT(DISTINCT(s.senior_manager_code)) scount,
            COUNT(DISTINCT(m.manager_code)) mcount,
            COUNT(DISTINCT(e.employee_code)) ecount
    FROM    Company c, Lead_Manager l, Senior_Manager s, Manager m, Employee e
    WHERE   c.company_code = l.company_code
        AND l.lead_manager_code = s.lead_manager_code
        AND s.senior_manager_code = m.senior_manager_code
        AND m.manager_code = e.manager_code
    GROUP BY
            c.company_code) j
LEFT JOIN Company c2
ON j.company_code = c2.company_code
ORDER BY
        j.company_code

/* 
Strategy

1. Create internal query of distinct counts needed, grouped by the company code
2. Create an outer query to grab founder names by left joining company codes and counts to
    the Company table
*/
