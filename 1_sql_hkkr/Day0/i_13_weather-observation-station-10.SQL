13
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/weather-observation-station-10/problem
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE "%[AEIOU]"
--WHERE UPPER(CITY) LIKE '%[^AEIOU]'
ORDER BY CITY
