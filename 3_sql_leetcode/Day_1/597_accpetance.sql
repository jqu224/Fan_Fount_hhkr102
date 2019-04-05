597. Friend Requests I: Overall Acceptance Rate
https://leetcode.com/problems/friend-requests-i-overall-acceptance-rate/
-----------------------------------------------------------------------------

In social network like Facebook or Twitter, people send friend requests and accept others’ requests as well. Now given two tables as below:
 

Table: friend_request
| sender_id | send_to_id |request_date|
|-----------|------------|------------|
| 1         | 2          | 2016_06-01 |
| 1         | 3          | 2016_06-01 |
| 1         | 4          | 2016_06-01 |
| 2         | 3          | 2016_06-02 |
| 3         | 4          | 2016-06-09 |
 

Table: request_accepted
| requester_id | accepter_id |accept_date |
|--------------|-------------|------------|
| 1            | 2           | 2016_06-03 |
| 1            | 3           | 2016-06-08 |
| 2            | 3           | 2016-06-08 |
| 3            | 4           | 2016-06-09 |
| 3            | 4           | 2016-06-10 |
 

Write a query to find the overall acceptance rate of requests rounded to 2 decimals, which is the number of acceptance divide the number of requests.
 

For the sample data above, your query should return the following result.
 

|accept_rate|
|-----------|
|       0.80|
 

Note:
The accepted requests are not necessarily from the table friend_request. In this case, you just need to simply count the total accepted requests (no matter whether they are in the original requests), and divide it by the number of requests to get the acceptance rate.
It is possible that a sender sends multiple requests to the same receiver, and a request could be accepted more than once. In this case, the ‘duplicated’ requests or acceptances are only counted once.
If there is no requests at all, you should return 0.00 as the accept_rate.
 

Explanation: There are 4 unique accepted requests, and there are 5 requests in total. So the rate is 0.80.
 

Follow-up:
Can you write a query to return the accept rate but for every month?
How about the cumulative accept rate for every day?


🐳----------------🐳----------------🐳----------------🐳----------------🐳----------------🐳----------------

SELECT ROUND(
          IFNULL(   (SELECT             
                      COUNT(DISTINCT requester_id, accepter_id)          
                    FROM request_accepted
                    )
                    /             
                    (SELECT COUNT(DISTINCT sender_id, send_to_id) 
                      FROM friend_request
                    )
                 , 0)
              , 2) AS accept_rate;           
=============

select
case
when count(distinct f1.sender_id, f1.send_to_id)=0 then 0.0
else round(count(distinct r1.requester_id, r1.accepter_id)/count(distinct f1.sender_id, f1.send_to_id),2)
end as accept_rate
from request_accepted as r1, friend_request as f1


=============
this is wrong
-- SELECT 
--     CASE 
--     WHEN COUNT(*) = 0 THEN 0.0
--     ELSE ROUND(SUM(A.ACCEPTED) / COUNT(*), 2) 
--     END AS accept_rate
-- FROM (
--     SELECT  
--         CASE
--         WHEN req.request_date <= acc.accept_date THEN 1
--         ELSE 0
--         END AS ACCEPTED
--     FROM friend_request AS req
--     LEFT JOIN (
--         SELECT  
--             requester_id 
--             , accepter_id
--             , MAX(accept_date) AS accept_date
--         FROM request_accepted AS acc 
--             GROUP BY acc.accepter_id , acc.requester_id  
--     ) AS acc
--     ON req.sender_id = acc.requester_id 
--         AND req.send_to_id = acc.accepter_id 
--     GROUP BY req.sender_id, req.send_to_id
-- ) AS A 



====================



