-- Table: Candidate

-- +-----+---------+
-- | id  | Name    |
-- +-----+---------+
-- | 1   | A       |
-- | 2   | B       |
-- | 3   | C       |
-- | 4   | D       |
-- | 5   | E       |
-- +-----+---------+  
-- Table: Vote

-- +-----+--------------+
-- | id  | CandidateId  |
-- +-----+--------------+
-- | 1   |     2        |
-- | 2   |     4        |
-- | 3   |     3        |
-- | 4   |     2        |
-- | 5   |     5        |
-- +-----+--------------+
-- id is the auto-increment primary key,
-- CandidateId is the id appeared in Candidate table.
-- Write a sql to find the name of the winning candidate, the above example will return the winner B.

-- +------+
-- | Name |
-- +------+
-- | B    |
-- +------+
-- Notes:

-- You may assume there is no tie, in other words there will be at most one winning candidate.



➕ ---- ✖️ ---- ➕ ---- ✖️ ---- ➕ ---- ✖️ ---- ➕ ---- ✖️ ---- 💯
{"headers": {
            "Candidate": ["id", "Name"], 
            "Vote": ["id", "CandidateId"]}, 
                     "rows": {
                         "Candidate": [[3, "C"]], 
                         "Vote": [[1, 2],
                                  [2, 4],
                                  [3, 3],
                                  [4, 2],
                                  [5, 5]]
             }
 }
MY Output
{"headers":["NAME"],
  "values":[["C"]]}
我的才是对的。。。这个意思是，
  当 id 2不存在于 candidate 表但是有两票，
  则 return []
  id 3：c 存在且有一票也没有用。
                                   
Expected
{"headers":["Name"],"values":[]}
                                   
➕ ---- ✖️ ---- ➕ ---- ✖️ ---- ➕ ---- ✖️ ---- ➕ ---- ✖️ ---- 💯
# Write your MySQL query statement below
SELECT
    NAME
FROM Candidate AS c
    JOIN Vote AS v
    ON c.id = v.CandidateId
GROUP BY c.Name 
ORDER BY COUNT(*) DESC
LIMIT 1

                 
➕ ---- ✖️ ---- ➕ ---- ✖️ ---- ➕ ---- ✖️ ---- ➕ ---- ✖️ ---- 💯
leetcode 版 solution which is 『wrong』！
SELECT
    name AS 'Name'
FROM
    Candidate
        JOIN
    (SELECT
        Candidateid
    FROM
        Vote
    GROUP BY Candidateid
    ORDER BY COUNT(*) DESC
    LIMIT 1) AS winner
WHERE
    Candidate.id = winner.Candidateid



