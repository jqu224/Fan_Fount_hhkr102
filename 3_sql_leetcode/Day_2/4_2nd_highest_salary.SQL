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
Input
{"headers": {"Employee": ["Id", "Salary"]}, "rows": {"Employee": [[1, 100]]}}

Expected
{"headers":["SecondHighestSalary"],"values":[[null]]}
这里不能这么写：  因为当只有一个 employee 的时候 leetcode 要 return [null]，  
而我这个，当只有一个 employee 的时候会 return [] 
                          看下一个 solution
# Write your MySQL query statement below
SELECT 
    Salary AS SecondHighestSalary
FROM Employee 
ORDER BY SecondHighestSalary DESC 
LIMIT 1 OFFSET 1
                          
My Output
{"headers":["SecondHighestSalary"],"values":[]}

===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 
OTHERS: (牛)
 什么可以默认 return null？  max() min() 一定会有 return，max(空 list)就会 return null，
                          符合题目要求了。
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee 
WHERE Salary NOT IN 
    ( SELECT 
        Max(Salary) 
      FROM Employee
    );
 
