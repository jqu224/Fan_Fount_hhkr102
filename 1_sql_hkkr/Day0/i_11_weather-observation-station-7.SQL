11
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/weather-observation-station-7/problem
SELECT distinct city
FROM STATION
where UPPER(SUBSTRING(city,LEN(city),1)) in ('A','E','I','O','U')
