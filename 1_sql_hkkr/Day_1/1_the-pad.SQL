-- https://www.hackerrank.com/challenges/the-pad

SELECT CONCAT(NAME, "(", LEFT(OCCUPATION, 1) ,")") 
FROM OCCUPATIONS
ORDER BY 1
; 
SELECT 
    CONCAT("There are a total of ", COUNT(*), " ", + LOWER(OCCUPATION), + "s.") 
FROM OCCUPATIONS
GROUP BY OCCUPATION 
ORDER BY 1
