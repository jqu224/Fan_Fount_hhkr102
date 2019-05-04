https://www.hackerrank.com/challenges/contest-leaderboard/problem
--- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 

/*
Enter your query here.
*/
select h.hacker_id
    , name
    , sum(score) as total_score
from
hackers as h 
inner join
/* find max_score*/
(select hacker_id
        , max(score) as score 
 from submissions 
 group by challenge_id, 1) max_score

on h.hacker_id=max_score.hacker_id
group by 1, 2

/* don't accept hackers with total_score=0 */
having total_score > 0

/* finally order as required */
order by 3 desc, 1
;

following doesnt work :(
-- select
--     h.hacker_id
--     , h.name
--     , sum(s.score)
-- from
--     hackers as h
--     , submissions as s
-- where
--     h.hacker_id = s.hacker_id
--     and (s.hacker_id, s.challenge_id, s.score) in 
--                     (select hacker_id
--                             , challenge_id
--                             , max(score)
--                     from submissions
--                      group by 1, 2  
--                     )
-- group by 1, 2
-- having sum(s.score) > 0
-- order by 3 desc, 1
    
    
    
    
