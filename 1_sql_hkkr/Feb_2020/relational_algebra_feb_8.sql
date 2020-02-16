https://www.hackerrank.com/challenges/basics-of-sets-and-relational-algebra-1/problem
🎼 --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  
Set A = {1,2,3,4,5,6}
Set B = {2,3,4,5,6,7,8}
How many elements are present in a u b?

a u b -> {1,2,3,4,5,6,7,8}


https://www.hackerrank.com/challenges/basics-of-sets-and-relational-algebra-2/problem
🎼 --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  
Set A = {1,2,3,4,5,6}
Set B = {2,3,4,5,6,7,8}

How many elements are present in A n B?

A n B -> {2,3,4,5,6}

https://www.hackerrank.com/challenges/basics-of-sets-and-relational-algebra-3/problem
🎼 --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  
Set A = {1,2,3,4,5,6}
Set B = {2,3,4,5,6,7,8}

How many elements are present in A - B?
only exists in a

A - B -> {1}


https://www.hackerrank.com/challenges/basics-of-sets-and-relational-algebra-4/problem
🎼 --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  
Set A = {1,2}
Set B = {2,3,4}

What is the total number of ordered pairs present in the Cartesian Product  A x B? 
a x b x c ... means chose 1 from abc... respectively 
here we only have 2 sets -> (1,2), (1,3), (1,4), (2,2), (2,3), (2,4) 



https://www.hackerrank.com/challenges/basics-of-sets-and-relational-algebra-5/problem
🎼 --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  
Consider the following data table named Student.

Student Name    Number  Sex  
Ben             3412    M  
Dan             1234    M  
Nel             2341    F  
What is the count of rows returned in the following relational selection?
σ(Number<3000)(Student)

>> Dan             1234    M  
>> Nel             2341    F 


https://www.hackerrank.com/challenges/basics-of-sets-and-relational-algebra-6/problem
🎼 --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  

Consider the following data table named Student.

Name                Number  Sex  
Nina                3412    F 
Mike                1234    M  
Nelson              2341    F  
What is the count of attributes (columns) returned in the following projection?
π(Name, Number)(Student)

>> Name, Number


https://www.hackerrank.com/challenges/basics-of-sets-and-relational-algebra-7/problem
🎼 --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  
Consider the following data table named Student.

Student Name        Number  Sex  
 Nina                3412    F 
 Mike                1234    M  
 Nelson              2341    F  
Here is another data table named Teaching Assistants

Subject     ID
 Physics     3412
 Chemistry   1111
 Mathematics 2341  
What is the count of rows returned in the following join operation?
Student ⊳⊲(Number=ID) Teaching Assistants

Student Name        Number  Sex  Subject     ID 
 Nina                3412    F     Physics     3412 
 Nelson              2341    F     Mathematics 2341 
NOTE: mike and chemistry will be ignored since they dont have a match
  
  

https://www.hackerrank.com/challenges/relational-algebra-3/problem
🎼 --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  
Which is a join condition contains an equality operator?
What is Equi Join in SQL?
SQL EQUI JOIN performs a JOIN against equality or matching column(s) values of the associated tables. An equal sign (=) is used as comparison operator in the where clause to refer equality.

You may also perform EQUI JOIN by using JOIN keyword followed by ON keyword and then specifying names of the columns along with their associated tables to check equality.

Syntax:

SELECT column_list 
FROM table1, table2....
WHERE table1.column_name =
table2.column_name; 
or

SELECT *
FROM table1 
JOIN table2
[ON (join_condition)]
     
     
https://www.hackerrank.com/challenges/relational-algebra-4/problem
🎼 --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  
In precedence of set operators the expression is evaluated from:

Depends on the expression
Left to right (Y)
Right to left
From user specification
     
https://www.hackerrank.com/challenges/relational-algebra-4/problem
🎼 --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  
In precedence of set operators the expression is evaluated from:

Depends on the expression
Left to right (Y)
Right to left
From user specification

     
     
https://www.hackerrank.com/challenges/database-query-languages/problem
🎼 --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  
Using which language can a user request information from a database ?
 
Query  (Y)
Relational
     
     
https://www.hackerrank.com/challenges/relations-1/problem🎼 --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  
The_____ operation allows the combining of two relations by merging pairs of tuples,
 one from each relation, into a single tuple.
     Join (Y)
     
https://www.hackerrank.com/challenges/relations-2/problem
🎼 --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  
The result which operation contains all pairs of tuples from the two relations, 
     regardless of whether their attribute values match.
     
     Cartesian product （Y）
Structural
