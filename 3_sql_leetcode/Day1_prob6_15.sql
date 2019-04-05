6:
https://leetcode.com/problems/not-boring-movies/
---------------------------------------------------------
X city opened a new cinema, many people would like to go to this cinema.
The cinema also gives out a poster indicating the movies’ ratings and descriptions.
Please write a SQL query to output movies with an odd numbered ID and a description that is not 'boring'. 
Order the result by rating.

 

For example, table cinema:

+---------+-----------+--------------+-----------+
|   id    | movie     |  description |  rating   |
+---------+-----------+--------------+-----------+
|   1     | War       |   great 3D   |   8.9     |
|   2     | Science   |   fiction    |   8.5     |
|   3     | irish     |   boring     |   6.2     |
|   4     | Ice song  |   Fantacy    |   8.6     |
|   5     | House card|   Interesting|   9.1     |
+---------+-----------+--------------+-----------+
For the example above, the output should be:
+---------+-----------+--------------+-----------+
|   id    | movie     |  description |  rating   |
+---------+-----------+--------------+-----------+
|   5     | House card|   Interesting|   9.1     |
|   1     | War       |   great 3D   |   8.9     |
+---------+-----------+--------------+-----------+


---------ANS----------ANS----------ANS----------ANS----------ANS----------ANS----------ANS
SELECT 
    id
    , movie 
    , description
    , rating
FROM cinema
WHERE description != "boring" and id % 2 = 1
ORDER BY rating DESC

\\\


7:
https://leetcode.com/problems/triangle-judgement/
---------------------------------------------------------
A pupil Tim gets homework to identify whether three line segments could possibly form a triangle.
 

However, this assignment is very heavy because there are hundreds of records to calculate.
 

Could you help Tim by writing a query to judge whether these three sides can form a triangle, assuming table triangle holds the length of the three sides x, y and z.
 

| x  | y  | z  |
|----|----|----|
| 13 | 15 | 30 |
| 10 | 20 | 15 |
For the sample data above, your query should return the follow result:
| x  | y  | z  | triangle |
|----|----|----|----------|
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |



---------ANS----------ANS----------ANS----------ANS----------ANS----------ANS----------ANS
# Write your MySQL query statement below
SELECT
    x
    , y
    , z
    , CASE 
        WHEN x + y > z and x + z > y and y + z > x THEN "Yes"
        ELSE "No"
    END AS triangle
FROM TRIANGLE
