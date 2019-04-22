https://leetcode.com/problems/rising-temperature/
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
SELECT
    w2.Id AS Id
FROM 
    Weather AS w1, 
    Weather AS w2
WHERE w1.RecordDate = DATE_ADD(w2.RecordDate, INTERVAL -1 DAY) 
    and w1.Temperature < w2.Temperature
    

===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 
others: （牛）
select aa.id
from Weather aa
join Weather bb
where Datediff(aa.RecordDate, bb.RecordDate) = 1 
and aa.Temperature > bb.Temperature

select w1.id
from Weather w1, Weather w2
where (DATEDIFF(w1.Date, w2.Date) = 1) AND w1.Temperature > w2.Temperature

NOTE: 
the following output: int(10)
SELECT DATEDIFF("2017-06-25 09:34:21", "2017-06-15 15:25:35");
