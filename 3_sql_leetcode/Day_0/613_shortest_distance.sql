
2
Table point holds the x coordinate of some points on x-axis in a plane, which are all integers.
 

Write a query to find the shortest distance between two points in these points.
 

| x   |
|-----|
| -1  |
| 0   |
| 2   |
 

The shortest distance is '1' obviously, which is from point '-1' to '0'. So the output is as below:
 

| shortest|
|---------|
| 1       |

⚡️ ---------------⚡️----------⚡️ ---------------⚡️----------⚡️ ---------------⚡️------------ 
https://leetcode.com/problems/shortest-distance-in-a-line
SELECT MIN(ABS(p1.x - p2.x)) AS `shortest`
FROM point p1, point p2
WHERE p1.x != p2.x
;
# 
# SELECT MIN(ABS(P1.x - P2.x)) AS shortest 
# FROM point AS P1
# JOIN point AS P2 ON P1.x <> P2.x
