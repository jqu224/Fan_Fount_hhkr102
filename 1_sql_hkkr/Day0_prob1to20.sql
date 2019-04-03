1
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/revising-the-select-query/problem

SELECT *
FROM city
WHERE
    COUNTRYCODE = 'USA'
    AND population > 100000;
    
2    
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/revising-the-select-query-2/problem
SELECT name
FROM city
WHERE countrycode = "USA"
    AND population > 120000
ORDER BY name DESC


3
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/select-all-sql/problem
SELECT *
FROM CITY

4
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/select-by-id/problem
SELECT *
FROM city
WHERE id = 1661


5
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/japanese-cities-attributes/problem
SELECT *
FROM city
WHERE countrycode = "JPN"


6
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/japanese-cities-name/problem
SELECT name 
FROM city
WHERE COUNTRYCODE  = "JPN"

7
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/weather-observation-station-1/problem
SELECT city, state
FROM station

8
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/weather-observation-station-3/problem
SELECT DISTINCT city
FROM station
WHERE id % 2 = 0

9
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/weather-observation-station-4/problem
select count(city) - count(distinct city)
from station

10
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/weather-observation-station-5/problem
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY), CITY LIMIT 1;
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) DESC, CITY LIMIT 1;

12
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/weather-observation-station-6/problem
select distinct  city 
from station
where city like "[aeiou]%"

13
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/weather-observation-station-7/problem
SELECT distinct city
FROM STATION
where UPPER(SUBSTRING(city,LEN(city),1)) in ('A','E','I','O','U')

14
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/weather-observation-station-8/problem
SELECT City
FROM STATION
WHERE City Like '[aeiou]%[aeiou]'

                      
15
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/weather-observation-station-10/problem
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE "%[AEIOU]"
--WHERE UPPER(CITY) LIKE '%[^AEIOU]'
ORDER BY CITY


16
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/weather-observation-station-11/problem?h_r=next-challenge&h_v=zen
SELECT DISTINCT CITY
FROM STATION 
WHERE CITY NOT LIKE '[AEIOU]%[AEIOU]'
                      
                      


17
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/weather-observation-station-12/problem?h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '[^AIOUE]%[^AEIOU]'               
                      
                      
18
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/more-than-75-marks/problem?h_r%5B%5D
SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT(NAME, 3), ID
-- ORDER BY SUBSTR(NAME,LENGTH(NAME)-3,3), ID
                      
19
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
https://www.hackerrank.com/challenges/name-of-employees/
SELECT NAME
FROM EMPLOYEE
ORDER BY NAME
                      
20
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
https://www.hackerrank.com/challenges/salary-of-employees/
SELECT NAME
FROM EMPLOYEE
WHERE SALARY > 2000 AND MONTHS < 10
ORDER BY EMPLOYEE_ID
                       

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
