https://blog.csdn.net/qq_37813928/article/details/79778272
关系代数 Relational Algebra
https://github.com/apachecn/beginnersbook-zh/blob/master/docs/dbms/20.md


https://www.hackerrank.com/challenges/databases-relational-calculus/problem
🚁  --  --    --  --    --  --    --  --    --  --    --  --    --  --    --  --  
We execute the following query (in Relational Calculus) on a set of integers S.
For the given set S, what will be the answer? Fill up the answer box with the required integer.

{x| all y： S(x) n S(y) -> y <= x}

S = {4,5,6,7,10,11,19,18,3}


Here is my stab at the logic, derived from giyam's answers below and Googling set notation:

Give me the set of x such that for all y in set(x) and set(y) is a function of (where) y <= x

However, I think the italicized section above is unclear due to the nature of the problem as it is written...
that is, what is the relationship with y and 'S(x)' after ∀?

Definitions:

∀ = forall  

| = such that  

∧ = logical conjunction (and) 

→ = is a function from


解答：
Give me the set of x such that for all y in set(x) and set(y) is a function of (where) y <= x



🚁  --  --    --  --    --  --    --  --    --  --    --  --    --  --    --  --  
https://www.hackerrank.com/challenges/databases-keys/problem
A database table with three fields (bookname, author, language) has been created. If the table is as provided below, which of these three fields may be used as the primary key?

bookname-author-language
A Tale of Two Cities, Charles Dickens, English
Oliver Twist, Charles Dickens, English
Godaan, Premchand, Hindi
Chandrakanta, Devaki Nandan Khatri, Hindi
Hamlet, William Shakespeare, English
The Merchant of Venice, William Shakespeare, English

bookname


🚁  --  --    --  --    --  --    --  --    --  --    --  --    --  --    --  --  
https://www.hackerrank.com/challenges/databases-natural-joins/problem
Databases - Natural Joins


Relation R(A,C) has the following tuples:

A : C
3,3
16,4
12,3
3,15
27,1

Relation S(B,C,D) has the following tuples:

B : C : D
50,1,6
1,55,8
4,3,9

The following tuple is in the result of the natural join between R and S where tuples are structured as (A,B,C,D):

27, X, Y, Z

In the answer box, fill up the values of the integers X, Y and Z in three separate lines. e.g.

10
20
30  


answer：

a    b   c  d
[27] 50 [1] 6

r = 27, 1
s = 50, 1, 6



🚁  --  --    --  --    --  --    --  --    --  --    --  --    --  --    --  --  
https://www.hackerrank.com/challenges/databases-differences/problem
Relation R(A,B,C) has the following tuples:

A B C
1 2 3
4 2 3
4 5 6
2 5 3
1 2 6

and relation S(A,B,C) has the following tuples:

A B C
2 5 3
2 5 4
4 5 6
1 2 3

The differences (R-S) is computed and the following tuple is found to be present in the result. Assume that the schema of the result is (A,B,C).

4, b, c

Find the integers b and c. Fill in the values in the answer box, each on a new line.

Output Format

Two integers, corresponding to b and c, each on a new line. For example:

4  
5  

R:
A B C
1 2 3 found in s
4 2 3 
4 5 6 found in s
2 5 3 found in s
1 2 6 found in s


