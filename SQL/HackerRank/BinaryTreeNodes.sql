-- Advanced Select: Binary Tree Nodes
-- https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true
-- lang : mysql
-- prompt : You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.
-- 
-- 
-- 
-- Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:
-- 
-- Root: If node is root node.
-- Leaf: If node is leaf node.
-- Inner: If node is neither root nor leaf node.

SELECT  b1.N,
        CASE 
            WHEN b1.P IS NULL THEN 'Root'
            WHEN EXISTS(SELECT b2.P FROM BST b2 WHERE b1.N = b2.P) THEN 'Inner'
            ELSE 'Leaf'
        END 
FROM    BST b1
ORDER BY    b1.N 

/* Notes

documentation on EXISTS: 
https://dev.mysql.com/doc/refman/8.0/en/exists-and-not-exists-subqueries.html
https://dev.mysql.com/doc/refman/8.0/en/subquery-optimization-with-exists.html

*/