https://leetcode.com/problems/classes-more-than-5-students
-----------------------------------------------------------------
There is a table courses with columns: student and class

Please list out all classes which have more than or equal to 5 students.

For example, the table:

+---------+------------+
| student | class      |
+---------+------------+
| A       | Math       |
| B       | English    |
| C       | Math       |
| D       | Biology    |
| E       | Math       |
| F       | Computer   |
| G       | Math       |
| H       | Math       |
| I       | Math       |
+---------+------------+
Should output:

+---------+
| class   |
+---------+
| Math    |
+---------+
 

Note:
The students should not be counted duplicate in each course.

===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 
# Write your MySQL query statement below
SELECT
    t.class
FROM 
    (SELECT  DISTINCT student, class
    FROM courses
    ) AS t
WHERE t.class is not null
GROUP BY t.class
HAVING COUNT(*) >= 5

===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 ===== 🐚 
others: （牛）

SELECT Class
FROM Courses
GROUP BY Class
Having Count(distinct student) >= 5
