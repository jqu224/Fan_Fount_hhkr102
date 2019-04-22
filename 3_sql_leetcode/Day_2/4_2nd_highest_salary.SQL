Write a SQL query to get the second highest salary from the Employee table.

+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
For example, given the above Employee table, the query should return 200 as the second highest salary. If there is no second highest salary, then the query should return null.

+---------------------+
| SecondHighestSalary |
+---------------------+
| 200                 |
+---------------------+

===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 
# Write your MySQL query statement below
# SELECT 
#     Salary AS SecondHighestSalary
# FROM Employee 
# ORDER BY SecondHighestSalary DESC 
# LIMIT 1 OFFSET 1


===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 
OTHERS: (牛)
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee 
WHERE Salary NOT IN 
    ( SELECT 
        Max(Salary) 
      FROM Employee
    );
 
