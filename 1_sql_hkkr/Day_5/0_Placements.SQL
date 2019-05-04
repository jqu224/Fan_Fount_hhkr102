https://www.hackerrank.com/challenges/placements/problem
--- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 

## solution a
select
    s.name
from
    Students as s
    inner join Packages as p1
    on s.id = p1.id 
    inner join Friends as f
    on s.id = f.id 
    inner join Packages as p2
    on f.friend_id = p2.id  
    and p1.salary < p2.salary
order by p2.salary

## solution b
select
    s.name
from
    Students as s
    inner join Packages as p1
    on s.id = p1.id 
    inner join Friends as f
    on s.id = f.id 
    inner join Packages as p2
    on f.friend_id = p2.id  
where p1.salary < p2.salary
order by p2.salary
     
