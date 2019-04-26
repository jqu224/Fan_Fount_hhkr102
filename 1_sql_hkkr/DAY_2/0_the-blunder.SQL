https://www.hackerrank.com/challenges/the-blunder/problem

--- 🍤 --- 🍤 --- 🍤 --- 🍤 --- 🍤 --- 🍤 --- 🍤 --- 

SELECT
    CEIL(SUM(
        (SALARY-CAST(REPLACE(CAST(SALARY AS CHAR),'0','') AS SIGNED))
       )/COUNT(*))
FROM EMPLOYEES
