https://www.hackerrank.com/challenges/symmetric-pairs/problem
--- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 --- 🐣 

select 
    distinct f1.x
    , f1.y
from
    Functions as f1
    , Functions as f2
where
    (f1.x = f2.y
    and f2.x = f1.y
    and f1.x < f1.y)
    or ((f1.x, f1.y) in 
                (select *
                from Functions as f1
                 group by 1, 2
                 having count(*) % 2 = 0
                ) 
    )
order by 1, 2
