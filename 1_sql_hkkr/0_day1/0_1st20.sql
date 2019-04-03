https://www.hackerrank.com/challenges/revising-the-select-query/problem

SELECT *
FROM city
WHERE
    COUNTRYCODE = 'USA'
    AND population > 100000;
    
    
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/revising-the-select-query-2/problem
SELECT name
FROM city
WHERE countrycode = "USA"
    AND population > 120000
ORDER BY name DESC

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/select-all-sql/problem
SELECT *
FROM CITY


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/select-by-id/problem
SELECT *
FROM city
WHERE id = 1661

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/japanese-cities-attributes/problem
SELECT *
FROM city
WHERE countrycode = "JPN"

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/japanese-cities-name/problem
SELECT name 
FROM city
WHERE COUNTRYCODE  = "JPN"


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/weather-observation-station-1/problem
SELECT city, state
FROM station


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/weather-observation-station-3/problem
SELECT DISTINCT city
FROM station
WHERE id % 2 = 0


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/weather-observation-station-4/problem
select count(city) - count(distinct city)
from station


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/weather-observation-station-5/problem
select top 1 CITY, len(CITY)
from station 
order by len(CITY), city;

select TOP 1 CITY, len(CITY)
from station 
order by len(CITY) desc, city


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/weather-observation-station-6/problem
select distinct  city 
from station
where city like "[aeiou]%"


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/weather-observation-station-7/problem
SELECT distinct city
FROM STATION
where UPPER(SUBSTRING(city,LEN(city),1)) in ('A','E','I','O','U')


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/weather-observation-station-8/problem
SELECT City
FROM STATION
WHERE City Like '[aeiou]%[aeiou]'

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



SELECT City
FROM STATION
WHERE City Like '[aeiou]%[aeiou]'

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
