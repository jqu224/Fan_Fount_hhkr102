https://leetcode.com/problems/department-highest-salary/

The Employee table holds all employees. Every employee has an Id, a salary, and there is also a column for the department Id.

+----+-------+--------+--------------+
| Id | Name  | Salary | DepartmentId |
+----+-------+--------+--------------+
| 1  | Joe   | 70000  | 1            |
| 2  | Jim   | 90000  | 1            |
| 3  | Henry | 80000  | 2            |
| 4  | Sam   | 60000  | 2            |
| 5  | Max   | 90000  | 1            |
+----+-------+--------+--------------+
The Department table holds all departments of the company.

+----+----------+
| Id | Name     |
+----+----------+
| 1  | IT       |
| 2  | Sales    |
+----+----------+
Write a SQL query to find employees who have the highest salary in each of the departments. For the above tables, your SQL query should return the following rows (order of rows does not matter).

+------------+----------+--------+
| Department | Employee | Salary |
+------------+----------+--------+
| IT         | Max      | 90000  |
| IT         | Jim      | 90000  |
| Sales      | Henry    | 80000  |
+------------+----------+--------+
Explanation:

Max and Jim both have the highest salary in the IT department and Henry has the highest salary in the Sales department.


----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 
# Write your MySQL query statement below
SELECT
    t.dName AS Department
    , e.Name AS Employee
    , e.Salary AS Salary
FROM
    Employee AS e 
    , (SELECT
        d.Id AS did
        , d.Name AS dName
        , MAX(e.Salary) AS dsalary
	    FROM
		Employee AS e
		, Department AS d
	    WHERE e.DepartmentId = d.Id
	    GROUP BY d.Id) AS t
WHERE 
    e.Salary = T.dsalary
    AND e.DepartmentId = T.did 
    
    
----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 ----- 🌴 
SELECT
    d.name AS 'Department',
    e.name AS 'Employee',
    Salary
FROM
    Employee AS e
    JOIN Department AS d
    ON e.DepartmentId = d.Id
WHERE
    (e.DepartmentId , e.Salary) IN
    (   SELECT
            DepartmentId
     	    , MAX(Salary)
        FROM
            Employee
        GROUP BY DepartmentId
	)
;
