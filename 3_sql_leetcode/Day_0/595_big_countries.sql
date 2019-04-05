1
-----------------------------------------
-- https://leetcode.com/problems/big-countries/ 
# Write your MySQL query statement below

SELECT 
    Name
    , population
    , area
FROM World
WHERE area > 3000000 or population > 25000000
        
