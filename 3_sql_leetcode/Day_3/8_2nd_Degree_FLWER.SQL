-- In facebook, there is a follow table with two columns: followee, follower.

Please write a sql query to get the amount of each follower’s follower if he/she has one.

For example:
+-------------+------------+
| followee    | follower   |
+-------------+------------+
|     A       |     B      |
|     B       |     C      |
|     B       |     D      |
|     D       |     E      |
+-------------+------------+
should output:
+-------------+------------+
| follower    | num        |
+-------------+------------+
|     B       |  2         |
|     D       |  1         |
+-------------+------------+
Explaination:
Both B and D exist in the follower list, when as a followee, B's follower is C and D, 
and D's follower is E. A does not exist in follower list.

Note:
Followee would not follow himself/herself in all cases.
Please display the result in follower's alphabet order.


----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 
# Write your MySQL query statement below
SELECT
    f1.follower AS follower
    , COUNT(DISTINCT f2.follower) AS num
FROM
    follow AS f1
    , follow AS f2
WHERE
    f1.follower = f2.followee
GROUP BY f1.follower 


----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 
select 
    distinct f.follower as follower
    , count(distinct f1.follower) as num
from follow f 
    join follow f1
    on f.follower =f1.followee
group by 1
order by 1
