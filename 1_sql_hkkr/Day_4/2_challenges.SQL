https://www.hackerrank.com/challenges/challenges/problem
--- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 

select H.hacker_id
    , H.name
    , count(*) as total
from Hackers H, Challenges C
where H.hacker_id = C.hacker_id
group by 1, 2
having total = 
    (select count(*) 
     from challenges
     group by hacker_id 
     order by 1 desc limit 1
     )
or total in
    (select total
     from (
        select count(*) as total
        from Hackers H, Challenges C
        where H.hacker_id = C.hacker_id
        group by H.hacker_id, H.name
      ) counts
     group by 1
     having count(*) = 1)
order by total desc, H.hacker_id asc
;



