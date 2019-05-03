https://www.hackerrank.com/challenges/asian-population/problem
----   ----   ----   ----   ----   ----   ----   ----   

SELECT 
    SUM(ci.population)
FROM
    CITY AS CI
    , COUNTRY AS CO
WHERE CO.continent = 'Asia'
    and CO.code = CI.countrycode
