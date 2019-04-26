https://www.hackerrank.com/challenges/weather-observation-station-14/problem

--- 🍙 --- --- 🍙 --- --- 🍙 --- --- 🍙 --- --- 🍙 --- --- 🍙 ---  

/*
Enter your query here.
*/
SELECT
    ROUND(LAT_N, 4)
FROM
    STATION
WHERE LAT_N < 137.2345
ORDER BY 1 DESC
LIMIT 1
