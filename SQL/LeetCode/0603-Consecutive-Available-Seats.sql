/*
 603. Consecutive Available Seats
Easy

341

25

Add to List

Share
SQL Schema
Several friends at a cinema ticket office would like to reserve consecutive available seats.
Can you help to query all the consecutive available seats order by the seat_id using the following cinema table?
| seat_id | free |
|---------|------|
| 1       | 1    |
| 2       | 0    |
| 3       | 1    |
| 4       | 1    |
| 5       | 1    |

Your query should return the following result for the sample case above.


| seat_id |
|---------|
| 3       |
| 4       |
| 5       |
Note:
The seat_id is an auto increment int, and free is bool ('1' means free, and '0' means occupied.).
Consecutive available seats are more than 2(inclusive) seats consecutively available.


SQL SCHEMA
Create table If Not Exists cinema (seat_id serial primary key, free bool)
Truncate table cinema
insert into cinema (seat_id, free) values ('1', '1')
insert into cinema (seat_id, free) values ('2', '0')
insert into cinema (seat_id, free) values ('3', '1')
insert into cinema (seat_id, free) values ('4', '1')
insert into cinema (seat_id, free) values ('5', '1')
 */

/*
 SOLUTION
 Using LEAD and LAG function over the seat_id with a CASE statement

 */
SELECT
    seat_id
  FROM
      (
      SELECT
          seat_id
          , CASE
                WHEN free = TRUE AND
                     (
                         LEAD(free) OVER (ORDER BY seat_id) = TRUE
                             OR
                         LAG(free) OVER (ORDER BY seat_id) = TRUE
                         ) THEN 'Y'
                ELSE 'N' END AS consecutive_flag
        FROM
            cinema
      ) a
 WHERE
     a.consecutive_flag = 'Y'
 ORDER BY
     seat_id;
/*
 ALTERNATIVE SOLUTION
 The difference between consecutive seats is equal to 1.
 Therefore, do a self join on where the absolute difference between seats is equal to 1
 */
SELECT
        DISTINCT a.seat_id
FROM cinema a
JOIN cinema b
ON abs(a.seat_id - b.seat_id) = 1
AND a.free = True AND b.free = TRUE
ORDER BY a.seat_id;
