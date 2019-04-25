Write a SQL query to rank scores. If there is a tie between two scores, both should have the same ranking. Note that after a tie, the next ranking number should be the next consecutive integer value. In other words, there should be no "holes" between ranks.

+----+-------+
| Id | Score |
+----+-------+
| 1  | 3.50  |
| 2  | 3.65  |
| 3  | 4.00  |
| 4  | 3.85  |
| 5  | 4.00  |
| 6  | 3.65  |
+----+-------+
For example, given the above Scores table, your query should generate the following report (order by highest score):

+-------+------+
| Score | Rank |
+-------+------+
| 4.00  | 1    |
| 4.00  | 1    |
| 3.85  | 2    |
| 3.65  | 3    |
| 3.65  | 3    |
| 3.50  | 4    |
+-------+------+


➕ ---- ✖️ ---- ➕ ---- ✖️ ---- ➕ ---- ✖️ ---- ➕ ---- ✖️ ---- 💯
-- Write your MySQL query statement below
SELECT s1.score as Score
       , count(*) as Rank
From Scores as s1
LEFT Join (SELECT DISTINCT SCORE 
           FROM Scores) as s2 
       on s1.Score <= s2.Score
Group by s1.id
Order by count(*)




➕ ---- ✖️ ---- ➕ ---- ✖️ ---- ➕ ---- ✖️ ---- ➕ ---- ✖️ ---- 💯
(SELECT DISTINCT SCORE 
           FROM Scores) as s2 
           
this gives us only 4 scores:

+-------+
| Score |
+-------+
| 3.50  |
| 3.65  | 
| 3.85  |
| 4.00  | 
+-------+     

From Scores as s1
LEFT Join (SELECT DISTINCT SCORE 
           FROM Scores) as s2 
       on s1.Score <= s2.Score   
thus,  
+-------+---------+-----------+
| s1.Id | s1.Score|  s2.Score |
+-------+---------+-----------+
| 1     | 3.50    |  3.5
| 1     | 3.50    |  3.65 
| 1     | 3.50    |  3.85
| 1     | 3.50    |  4.00
group by s1.id and count() => 4

| 2     | 3.65    |  3.65 
| 2     | 3.65    |  3.85
| 2     | 3.65    |  4.00
group by s1.id and count() => 3

| 3     | 3.65    |  3.65 
| 3     | 3.65    |  3.85
| 3     | 3.65    |  4.00
group by s1.id and count() => 3
 
| 4     | 3.85    |  3.85
| 4     | 3.85    |  4.00
group by s1.id and count() => 2

| 5     | 4.00    |  4.00
group by s1.id and count() => 1

| 6     | 4.00    |  4.00

group by s1.id and count() => 1
+-------+---------+


overall:

| s1.Id | s1.Score|  rank |
| 1     | 3.50    |  4
| 2     | 3.65    |  3
| 3     | 3.65    |  3
| 4     | 3.85    |  2
| 5     | 4.00    |  1
| 6     | 4.00    |  1
