https://www.hackerrank.com/challenges/full-score/problem
--- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 

select h.hacker_id, h.name
from submissions s
    inner join challenges c
    on s.challenge_id = c.challenge_id
    inner join difficulty d
    on c.difficulty_level = d.difficulty_level 
    inner join hackers h
    on s.hacker_id = h.hacker_id
where s.score = d.score and c.difficulty_level = d.difficulty_level
group by h.hacker_id, h.name
having count(*) > 1
order by count(*) desc, s.hacker_id asc
