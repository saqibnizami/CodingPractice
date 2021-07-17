/*
 The Employee table holds all employees including their managers. Every employee has an Id, and there is also a column for the manager Id.

+------+----------+-----------+----------+
|Id    |Name 	  |Department |ManagerId |
+------+----------+-----------+----------+
|101   |John 	  |A 	      |null      |
|102   |Dan 	  |A 	      |101       |
|103   |James 	  |A 	      |101       |
|104   |Amy 	  |A 	      |101       |
|105   |Anne 	  |A 	      |101       |
|106   |Ron 	  |B 	      |101       |
+------+----------+-----------+----------+
Given the Employee table, write a SQL query that finds out managers with at least 5 direct report. For the above table, your SQL query should return:

+-------+
| Name  |
+-------+
| John  |
+-------+
Note:
No one would report to himself.

 SQL SCHEMA:

 Create table If Not Exists Employee (Id int, Name varchar(255), Department varchar(255), ManagerId int)
Truncate table Employee
insert into Employee (Id, Name, Department, ManagerId) values ('101', 'John', 'A', 'None')
insert into Employee (Id, Name, Department, ManagerId) values ('102', 'Dan', 'A', '101')
insert into Employee (Id, Name, Department, ManagerId) values ('103', 'James', 'A', '101')
insert into Employee (Id, Name, Department, ManagerId) values ('104', 'Amy', 'A', '101')
insert into Employee (Id, Name, Department, ManagerId) values ('105', 'Anne', 'A', '101')
insert into Employee (Id, Name, Department, ManagerId) values ('106', 'Ron', 'B', '101')

 */

SELECT
    manager.name
  FROM
      (
      SELECT
          distinct managerId,
          COUNT(id) OVER (PARTITION BY managerid) directreportcount
        FROM
            employee
--           where managerId is not NULL
      )                 directreports
          JOIN employee manager
               ON directreports.managerid = manager.id
WHERE directreports.directreportcount > 4
;
