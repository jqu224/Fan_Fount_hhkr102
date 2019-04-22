
ttps://leetcode.com/problems/rising-temperature/
+---------+------------+---------+------------+---------+------------+---------+------------+
Given a Weather table, write a SQL query to find all dates' Ids with higher temperature compared to its previous (yesterday's) dates.

+---------+------------------+------------------+
| Id(INT) | RecordDate(DATE) | Temperature(INT) |
+---------+------------------+------------------+
|       1 |       2015-01-01 |               10 |
|       2 |       2015-01-02 |               25 |
|       3 |       2015-01-03 |               20 |
|       4 |       2015-01-04 |               30 |
+---------+------------------+------------------+
For example, return the following Ids for the above Weather table:

+----+
| Id |
+----+
|  2 |
|  4 |
+----+


===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 
# Write your MySQL query statement below
DELETE p2 
  FROM Person p1
  INNER JOIN Person p2 
  WHERE
    p1.id < p2.id AND p1.email = p2.email;
--     and then we need to update the indices
ANALYZE TABLE Person


===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 
others (菜)：

DELETE FROM person 
WHERE id NOT IN 
(SELECT d_id 
         FROM (select email, min(id) as d_id From Person group by 1 )
 as a);
