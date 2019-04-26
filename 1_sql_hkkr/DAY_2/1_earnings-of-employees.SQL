https://www.hackerrank.com/challenges/earnings-of-employees/problem

--- 🍤 --- 🍤 --- 🍤 --- 🍤 --- 🍤 --- 🍤 --- 🍤 --- 

/*
Enter your query here.
*/
-- SELECT
--     MONTHS*SALARY
--     , COUNT(*)
-- FROM EMPLOYEE
-- GROUP BY MONTHS*SALARY
-- ORDER BY  MONTHS*SALARY DESC
-- LIMIT 1

SELECT
    MONTHS*SALARY
    , COUNT(*)
FROM EMPLOYEE
GROUP BY 1
ORDER BY  1 DESC
LIMIT 1

