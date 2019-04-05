Write a SQL query to find all duplicate emails in a table named Person.

+----+---------+
| Id | Email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+
For example, your query should return the following for the above table:

+---------+
| Email   |
+---------+
| a@b.com |
+---------+
Note: All emails are in lowercase.




🐳---------------🐳---------------🐳---------------🐳---------------🐳--------------- 
SELECT DISTINCT EMAIL
FROM PERSON
GROUP BY EMAIL
HAVING COUNT(EMAIL) > 1

-- 🐳:
-- WHERE CANT BE USED HERE
-- You can't use an aggregate directly in a WHERE clause


-- this is slow
SELECT DISTINCT p1.Email
FROM Person AS p1, Person AS p2
WHERE p1.Id <> p2.Id and p1.Email = p2.Email


-- this is slow 2
SELECT DISTINCT p1.Email
FROM Person AS p1
JOIN Person AS p2
ON p1.Id <> p2.Id and p1.Email = p2.Email





