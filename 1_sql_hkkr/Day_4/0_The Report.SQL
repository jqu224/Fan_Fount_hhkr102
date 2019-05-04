https://www.hackerrank.com/challenges/the-report/problem
--- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 

SELECT 
    CASE
        WHEN g.Grade > 7
        THEN s.Name
        WHEN g.Grade <= 7
        THEN NULL
    END
    , g.Grade
    , s.Marks 
FROM Students AS s
    , Grades AS g
Where s.Marks BETWEEN g.Min_Mark AND g.Max_Mark 
ORDER BY g.Grade DESC, s.Name ASC, s.Marks ASC
