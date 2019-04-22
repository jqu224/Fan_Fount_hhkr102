Table my_numbers contains many numbers in column num including duplicated ones.
Can you write a SQL query to find the biggest number, which only appears once.

+---+
|num|
+---+
| 8 |
| 8 |
| 3 |
| 3 |
| 1 |
| 4 |
| 5 |
| 6 | 
For the sample data above, your query should return the following result:
+---+
|num|
+---+
| 6 |
Note:
If there is no such number, just output null.


===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 

# Write your MySQL query statement below
SELECT 
    CASE 
        WHEN sum(num) = num THEN num
        ELSE null
    END AS num        
FROM my_numbers
GROUP BY num
ORDER BY num DESC
LIMIT 1


===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 
others: （菜鸟）
select(
  select num
  from number
  group by num
  having count(*) = 1
  order by num desc limit 1
) as num;


SELECT MAX(num) AS num
FROM (
  SELECT * 
  FROM number
  GROUP BY num
  HAVING COUNT(*) = 1
) t;
