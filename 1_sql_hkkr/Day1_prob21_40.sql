21
-- https://www.hackerrank.com/challenges/weather-observation-station-9/problem
SELECT DISTINCT CITY 
FROM STATION
WHERE CITY REGEXP '^[^aeiou]';

22
----------------------------------------------------------------------------
-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem
SELECT 
CASE 
    WHEN A + B > C AND A+C>B AND B+C>A THEN 
        CASE 
        WHEN A = B AND B = C THEN 'Equilateral' 
        WHEN A = B OR B = C OR A = C THEN 'Isosceles' 
        WHEN A != B OR B != C OR A != C THEN 'Scalene' 
        END 
    ELSE 'Not A Triangle' 
END 
FROM TRIANGLES;

23
------------------------------------------------------------------------------
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

24
------------------------------------------------------------------------------
-- https://www.hackerrank.com/challenges/occupations
set @r1=0, @r2=0, @r3=0, @r4=0;
select min(Doctor), min(Professor), min(Singer), min(Actor)
from(
  select case when Occupation='Doctor' then (@r1:=@r1+1)
            when Occupation='Professor' then (@r2:=@r2+1)
            when Occupation='Singer' then (@r3:=@r3+1)
            when Occupation='Actor' then (@r4:=@r4+1) end as RowNumber,
    case when Occupation='Doctor' then Name end as Doctor,
    case when Occupation='Professor' then Name end as Professor,
    case when Occupation='Singer' then Name end as Singer,
    case when Occupation='Actor' then Name end as Actor
  from OCCUPATIONS
  order by Name
) Temp
group by RowNumber;


25
------------------------------------------------------------------------------
-- https://www.hackerrank.com/challenges/binary-search-tree-1/problem
SELECT 
CASE
	WHEN P IS NULL THEN CONCAT(N, ' Root')
	WHEN N IN (SELECT DISTINCT P FROM BST) THEN CONCAT(N, ' Inner')
	ELSE CONCAT(N, ' Leaf')
END
FROM BST
ORDER BY N ASC

------------------------------------------------------------------------------
--


------------------------------------------------------------------------------
--


------------------------------------------------------------------------------
--


------------------------------------------------------------------------------

------------------------------------------------------------------------------

------------------------------------------------------------------------------

------------------------------------------------------------------------------

------------------------------------------------------------------------------

------------------------------------------------------------------------------

------------------------------------------------------------------------------

------------------------------------------------------------------------------

------------------------------------------------------------------------------

------------------------------------------------------------------------------
