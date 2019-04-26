https://www.hackerrank.com/challenges/weather-observation-station-16/problem

--- 🍙 --- --- 🍙 --- --- 🍙 --- --- 🍙 --- --- 🍙 --- --- 🍙 ---  

/*
Enter your query here.
*/
SELECT
    ROUND(LAT_N, 4)
FROM
    STATION
WHERE LAT_N > 38.7780
ORDER BY 1
LIMIT 1
