https://leetcode.com/problems/managers-with-at-least-5-direct-reports/

The Employee table holds all employees including their managers. Every employee has an Id, and there is also a column for the manager Id.

+------+----------+-----------+----------+
|Id    |Name 	  |Department |ManagerId |
+------+----------+-----------+----------+
|101   |John 	  |A 	      |null      |
|102   |Dan 	  |A 	      |101       |
|103   |James 	  |A 	      |101       |
|104   |Amy 	  |A 	      |101       |
|105   |Anne 	  |A 	      |101       |
|106   |Ron 	  |B 	      |101       |
+------+----------+-----------+----------+
Given the Employee table, write a SQL query that finds out managers with at least 5 direct report. For the above table, your SQL query should return:

+-------+
| Name  |
+-------+
| John  |
+-------+
Note:
No one would report to himself.
🐝 ------  🐝 ------  🐝 ------  🐝 ------  🐝 ------  🐝 ------  
# Write your MySQL query statement below
SELECT e1.Name
FROM EMPLOYEE e1
join  EMPLOYEE e2
on e1.Id = e2.ManagerID
GROUP BY e1.Name 
HAVING COUNT(e1.Name) >= 5


🐝 ------  🐝 ------  🐝 ------  🐝 ------  🐝 ------  🐝 ------  
others:（菜）
# Write your MySQL query statement below
SELECT Name
FROM EMPLOYEE
WHERE Id in (
    SELECT ManagerID
    FROM EMPLOYEE
    WHERE ManagerID IS NOT NULL
    GROUP BY ManagerId
    HAVING COUNT(ManagerID) >= 5
);

🐝 ------  🐝 ------  🐝 ------  🐝 ------  🐝 ------  🐝 ------  
# Write your MySQL query statement below
SELECT Name
FROM EMPLOYEE
WHERE Id in (
    SELECT ManagerID
    FROM EMPLOYEE 
    GROUP BY ManagerId
    HAVING COUNT(ManagerID) >= 5
);


🐝 ------  🐝 ------  🐝 ------  🐝 ------  🐝 ------  🐝 ------  
inner join:
+------+----------+-----------+----------+
|e1.Id    |e1.Name 	  |e1.Department |e1.ManagerId ||e2.Id    |e2.Name 	  |e2.Department |e2.ManagerId |
+------+----------+-----------+----------+
找到 5个人的 managerid == john 的 id ，所以 john 这一行duplicate 成了 5行：
|101      |John 	  |A 	         |null         ||102      |Dan 	      |A 	         |101          |
|101      |John 	  |A 	         |null         ||103      |James 	  |A 	         |101          |
|101      |John 	  |A 	         |null         ||104      |Amy 	      |A 	         |101          |
|101      |John 	  |A 	         |null         ||105      |Anne 	  |A 	         |101          |
|101      |John 	  |A 	         |null         ||106      |Ron 	      |B 	         |101          |

|102      |Dan 	      |A 	         |101          | 没有找到有人的 managerid == dan 的 id 所以 dan 这一行 🍦的右边 4 个column都是 null 
|103      |James 	  |A 	         |101          | 没有找到有人的 managerid == James 的 id 所以 dan 这一行 🍦的右边 4 个column都是 null 
|104      |Amy 	      |A 	         |101          | 没有找到有人的 managerid == Amy 的 id 所以 dan 这一行 🍦的右边 4 个column都是 null 
|105      |Anne 	  |A 	         |101          | 没有找到有人的 managerid == Anne 的 id 所以 dan 这一行 🍦的右边 4 个column都是 null 
|106      |Ron 	      |B 	         |101          | 没有找到有人的 managerid == Ron 的 id 所以 dan 这一行 🍦的右边 4 个column都是 null 

综上：
left join 的 output 就是：
+------+----------+-----------+----------+
|e1.Id    |e1.Name 	  |e1.Department |e1.ManagerId ||e2.Id    |e2.Name 	  |e2.Department |e2.ManagerId | 
|101      |John 	  |A 	         |null         ||102      |Dan 	      |A 	         |101          |
|101      |John 	  |A 	         |null         ||103      |James 	  |A 	         |101          |
|101      |John 	  |A 	         |null         ||104      |Amy 	      |A 	         |101          |
|101      |John 	  |A 	         |null         ||105      |Anne 	  |A 	         |101          |
|101      |John 	  |A 	         |null         ||106      |Ron 	      |B 	         |101          |


🐝 ------  🐝 ------  🐝 ------  🐝 ------  🐝 ------  🐝 ------  
right join:
+------+----------+-----------+----------+
|e1.Id    |e1.Name 	  |e1.Department |e1.ManagerId ||e2.Id    |e2.Name 	  |e2.Department |e2.ManagerId |
+------+----------+-----------+----------+
找到 5个人的 managerid == john 的 id ，所以 john 这一行duplicate 成了 5行：
|101      |John 	  |A 	         |null         ||102      |Dan 	      |A 	         |101          |
|101      |John 	  |A 	         |null         ||103      |James 	  |A 	         |101          |
|101      |John 	  |A 	         |null         ||104      |Amy 	      |A 	         |101          |
|101      |John 	  |A 	         |null         ||105      |Anne 	  |A 	         |101          |
|101      |John 	  |A 	         |null         ||106      |Ron 	      |B 	         |101          |

|102      |Dan 	      |A 	         |101          | 没有找到有人的 managerid == dan 的 id 所以 dan 这一行 🍦的zuo边 4 个column都是 null 
|103      |James 	  |A 	         |101          | 没有找到有人的 managerid == James 的 id 所以 dan 这一行 🍦的zuo边 4 个column都是 null 
|104      |Amy 	      |A 	         |101          | 没有找到有人的 managerid == Amy 的 id 所以 dan 这一行 🍦的zuo边 4 个column都是 null 
|105      |Anne 	  |A 	         |101          | 没有找到有人的 managerid == Anne 的 id 所以 dan 这一行 🍦的zuo边 4 个column都是 null 
|106      |Ron 	      |B 	         |101          | 没有找到有人的 managerid == Ron 的 id 所以 dan 这一行 🍦的zuo边 4 个column都是 null 

综上：
right join 的 output 就是：
+------+----------+-----------+----------+
|e1.Id    |e1.Name 	  |e1.Department |e1.ManagerId ||e2.Id    |e2.Name 	  |e2.Department |e2.ManagerId | 
|101      |John 	  |A 	         |null         ||102      |Dan 	      |A 	         |101          |
|101      |John 	  |A 	         |null         ||103      |James 	  |A 	         |101          |
|101      |John 	  |A 	         |null         ||104      |Amy 	      |A 	         |101          |
|101      |John 	  |A 	         |null         ||105      |Anne 	  |A 	         |101          |
|101      |John 	  |A 	         |null         ||106      |Ron 	      |B 	         |101          |
|null      |null 	  |null 	     |null         ||102      |Dan 	      |A 	         |101          |
|null      |null 	  |null 	     |null         ||103      |James 	  |A 	         |101          |
|null      |null 	  |null 	     |null         ||104      |Amy 	      |A 	         |101          |
|null      |null 	  |null 	     |null         ||105      |Anne 	  |A 	         |101          |
|null      |null 	  |null 	     |null         ||106      |Ron 	      |B 	         |101          |









🐝 ------  🐝 ------  🐝 ------  🐝 ------  🐝 ------  🐝 ------  

left join:
+------+----------+-----------+----------+
|e1.Id    |e1.Name 	  |e1.Department |e1.ManagerId ||e2.Id    |e2.Name 	  |e2.Department |e2.ManagerId |
+------+----------+-----------+----------+
找到 5个人的 managerid == john 的 id ，所以 john 这一行duplicate 成了 5行：
|101      |John 	  |A 	         |null         ||102      |Dan 	      |A 	         |101          |
|101      |John 	  |A 	         |null         ||103      |James 	  |A 	         |101          |
|101      |John 	  |A 	         |null         ||104      |Amy 	      |A 	         |101          |
|101      |John 	  |A 	         |null         ||105      |Anne 	  |A 	         |101          |
|101      |John 	  |A 	         |null         ||106      |Ron 	      |B 	         |101          |

|102      |Dan 	      |A 	         |101          | 没有找到有人的 managerid == dan 的 id 所以 dan 这一行 🍦的右边 4 个column都是 null 
|103      |James 	  |A 	         |101          | 没有找到有人的 managerid == James 的 id 所以 dan 这一行 🍦的右边 4 个column都是 null 
|104      |Amy 	      |A 	         |101          | 没有找到有人的 managerid == Amy 的 id 所以 dan 这一行 🍦的右边 4 个column都是 null 
|105      |Anne 	  |A 	         |101          | 没有找到有人的 managerid == Anne 的 id 所以 dan 这一行 🍦的右边 4 个column都是 null 
|106      |Ron 	      |B 	         |101          | 没有找到有人的 managerid == Ron 的 id 所以 dan 这一行 🍦的右边 4 个column都是 null 

综上：
left join 的 output 就是：
+------+----------+-----------+----------+
|e1.Id    |e1.Name 	  |e1.Department |e1.ManagerId ||e2.Id    |e2.Name 	  |e2.Department |e2.ManagerId | 
|101      |John 	  |A 	         |null         ||102      |Dan 	      |A 	         |101          |
|101      |John 	  |A 	         |null         ||103      |James 	  |A 	         |101          |
|101      |John 	  |A 	         |null         ||104      |Amy 	      |A 	         |101          |
|101      |John 	  |A 	         |null         ||105      |Anne 	  |A 	         |101          |
|101      |John 	  |A 	         |null         ||106      |Ron 	      |B 	         |101          |
|102      |Dan 	      |A 	         |101          ||null      |null 	  |null 	     |null         |
|103      |James 	  |A 	         |101          ||null      |null 	  |null 	     |null         | 
|104      |Amy 	      |A 	         |101          ||null      |null 	  |null 	     |null         |
|105      |Anne 	  |A 	         |101          ||null      |null 	  |null 	     |null         | 
|106      |Ron 	      |B 	         |101          ||null      |null 	  |null 	     |null         |

🐝 ------  🐝 ------  🐝 ------  🐝 ------  🐝 ------  🐝 ------  
这里变一下表：
+------+----------+-----------+----------+
|Id    |Name 	  |Department |ManagerId |
+------+----------+-----------+----------+
|101   |John 	  |A 	      |null      |
|102   |Dan 	  |A 	      |101       |
|103   |James 	  |A 	      |101       |
|104   |Amy 	  |A 	      |101       |
|105   |Anne 	  |A 	      |101       |
|106   |Ron 	  |B 	      |101       |
|null   |zzz 	  |B 	      |222       |
+------+----------+-----------+----------+

outter join:
+------+----------+-----------+----------+
|e1.Id    |e1.Name 	  |e1.Department |e1.ManagerId ||e2.Id    |e2.Name 	  |e2.Department |e2.ManagerId |
+------+----------+-----------+----------+
找到 5个人的 managerid == john 的 id ，所以 john 这一行duplicate 成了 5行：
|101      |John 	  |A 	         |null         ||102      |Dan 	      |A 	         |101          |
|101      |John 	  |A 	         |null         ||103      |James 	  |A 	         |101          |
|101      |John 	  |A 	         |null         ||104      |Amy 	      |A 	         |101          |
|101      |John 	  |A 	         |null         ||105      |Anne 	  |A 	         |101          |
|101      |John 	  |A 	         |null         ||106      |Ron 	      |B 	         |101          |

|102      |Dan 	      |A 	         |101          | 没有找到有人的 managerid == dan 的 id 所以 dan 这一行 🍦的右边 4 个column都是 null 
|103      |James 	  |A 	         |101          | 没有找到有人的 managerid == James 的 id 所以 dan 这一行 🍦的右边 4 个column都是 null 
|104      |Amy 	      |A 	         |101          | 没有找到有人的 managerid == Amy 的 id 所以 dan 这一行 🍦的右边 4 个column都是 null 
|105      |Anne 	  |A 	         |101          | 没有找到有人的 managerid == Anne 的 id 所以 dan 这一行 🍦的右边 4 个column都是 null 
|106      |Ron 	      |B 	         |101          | 没有找到有人的 managerid == Ron 的 id 所以 dan 这一行 🍦的右边 4 个column都是 null 

综上：
outter join 的 output 就是：
+------+----------+-----------+----------+
|e1.Id    |e1.Name 	  |e1.Department |e1.ManagerId ||e2.Id    |e2.Name 	  |e2.Department |e2.ManagerId | 
|101      |John 	  |A 	         |null         ||102      |Dan 	      |A 	         |101          |
|101      |John 	  |A 	         |null         ||103      |James 	  |A 	         |101          |
|101      |John 	  |A 	         |null         ||104      |Amy 	      |A 	         |101          |
|101      |John 	  |A 	         |null         ||105      |Anne 	  |A 	         |101          |
|101      |John 	  |A 	         |null         ||106      |Ron 	      |B 	         |101          |

|102      |Dan 	      |A 	         |101          ||null      |null 	  |null 	     |null         |
|103      |James 	  |A 	         |101          ||null      |null 	  |null 	     |null         | 
|104      |Amy 	      |A 	         |101          ||null      |null 	  |null 	     |null         |
|105      |Anne 	  |A 	         |101          ||null      |null 	  |null 	     |null         | 
|106      |Ron 	      |B 	         |101          ||null      |null 	  |null 	     |null         |

|null     |null 	  |null 	     |null         ||101       |John 	  |A 	         |null         |

|null     |zzz 	      |B 	         |222          ||null      |null 	  |null 	     |null         |
|null      |null 	  |null 	     |null         ||null     |zzz 	      |B 	         |222          |

