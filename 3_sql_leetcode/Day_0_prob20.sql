1
-----------------------------------------
-- https://leetcode.com/problems/big-countries/submissions/
# Write your MySQL query statement below

SELECT 
    Name
    , population
    , area
FROM World
WHERE area > 3000000 or population > 25000000
        

2
-----------------------------------------
SELECT MIN(ABS(p1.x - p2.x)) AS `shortest`
FROM point p1, point p2
WHERE p1.x != p2.x
;
# 
# SELECT MIN(ABS(P1.x - P2.x)) AS shortest 
# FROM point AS P1
# JOIN point AS P2 ON P1.x <> P2.x

3
-----------------------------------------
UPDATE salary
set sex =
CASE sex
    when 'm' then 'f'
    WHEN 'f' then 'm'
end

4
-----------------------------------------
https://leetcode.com/problems/find-customer-referee
 # Write your MySQL query statement below
SELECT name
FROM customer
WHERE referee_id != 2 or referee_id is null
               

5
-----------------------------------------


6
-----------------------------------------


7
-----------------------------------------


1
-----------------------------------------


1
-----------------------------------------


1
-----------------------------------------


