
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
