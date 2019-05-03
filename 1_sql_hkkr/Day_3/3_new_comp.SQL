/*
Enter your query here.
*/
select
    c.company_code
    , c.founder
    , count(distinct lm.lead_manager_code)
    , count(distinct sm.senior_manager_code)
    , count(distinct m.manager_code)
    , count(distinct e.employee_code)
from 
    company AS c
    , lead_manager AS lm
    , senior_manager AS sm
    , manager AS m
    , Employee AS e
WHERE
    c.company_code = lm.company_code
    and c.company_code = sm.company_code 
    and c.company_code = m.company_code
    and c.company_code = e.company_code
group by 1, 2
order by 1
