联机事务处理OLTP（on-line transaction processing）、联机分析处理OLAP（On-Line Analytical Processing）

OLTP - business process
operations:
- transactional
- fast processing 
- normalized 
- current data
即联机事务处理，
就是我们经常说的关系数据库，
增删查改就是我们经常应用的东西，
这是数据库的基础；TPCC(Transaction Processing Performance Council)属于此类。

OLAP - business data warehouse
information:
- analytical 
- slow queries
- denormalized
- historical data
即联机分析处理，
是数据仓库的核心，
所谓数据仓库是对于大量已经由OLTP形成的数据的一种分析型的数据库，
用于处理商业智能、
决策支持等重要的决策信息；
数据仓库是在数据库应用到一定程序之后而对历史数据的加工与分析，
读取较多，更新较少，TPCH属于此类。

---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 
https://www.hackerrank.com/challenges/olap-performance/problem
Which of these helps OLAP speed up queries, in terms of performance?

https://en.wikipedia.org/wiki/OLAP_cube

Dice
Aggregation 

-- Slice 
the act of picking a rectangular subset of a cube by choosing a single value for one of its dimensions, 
creating a new cube with one fewer dimension.[5] The picture shows a slicing operation: 
The sales figures of all sales regions and all product categories of the company 
in the year 2005 and 2006 are "sliced" out of the data cube.

-- Dice
The dice operation produces a subcube by allowing the analyst to 
pick specific values of multiple dimensions.[6] The picture shows a dicing operation: 
The new cube shows the sales figures of a limited number of product categories, 
the time and region dimensions cover the same range as before.


-- Drill Down/Up 
allows the user to navigate among levels of data ranging 
from the most summarized (up) to the most detailed (down)
The picture shows a drill-down operation: The analyst moves from the summary 
category "Outdoor-Schutzausrüstung" to see the sales figures for the individual products.

-- Roll-up
A roll-up involves summarizing the data along a dimension. 
The "summarization" rule might be an aggregate function, such as computing 
totals along a hierarchy or applying a set of formulas such as "profit = sales - expenses".
General aggregation functions may be costly to compute when rolling up: 
if they cannot be determined from the cells of the cube, they must be computed from the base data, either computing them online (slow) or precomputing them for possible rollouts (large space). Aggregation functions that can be determined from the cells are known as decomposable aggregation functions, and allow efficient computation.[7] For example, it is easy to support COUNT, MAX, MIN, and SUM in OLAP, since these can be computed for each cell of the OLAP cube and then rolled up, since on overall sum (or count etc.) is the sum of sub-sums, but it is difficult to support MEDIAN, as that must be computed for every view separately: the median of a set is not the median of medians of subsets.

-- Pivot
allows an analyst to rotate the cube in space to see its various faces. 
For example, cities could be arranged vertically and products horizontally 
while viewing data for a particular quarter. 
Pivoting could replace products with time periods to see data across time for a single product.[5][8]

The picture shows a pivoting operation: The whole cube is rotated, giving another perspective on the data.

---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 
https://www.hackerrank.com/challenges/olap-operations-1/
This OLAP operation involves computing all of the data relationships for one or more dimensions.

roll-up
---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 
https://www.hackerrank.com/challenges/olap-operations-2/problem
This OLAP Operation rotates the data, and delivers an alternative to the original presentation. 

pivot
---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 ---- 📈 
https://www.hackerrank.com/challenges/olap-operation-types-2/problem
Consider a fact table DataPoints(D1,D2,D3,x), and the following three queries:

Q1: Select D1,D2,D3,Sum(x) From DataPoints Group By D1,D2,D3

Q2: Select D1,D2,D3,Sum(x) From DataPoints Group By D1,D2,D3 WITH CUBE

Q3: Select D1,D2,D3,Sum(x) From DataPoints Group By D1,D2,D3 WITH ROLLUP
Suppose attributes D1, D2, and D3 have n1, n2, and n3 different values respectively, 
and assume that each possible combination of values appears at least once in the table DataPoints. 
The number of tuples in the result of each of the three queries above can be specified 
as an arithmetic formula involving n1, n2, and n3. Pick the one tuple (a,b,c,d,e,f) 
in the list below such that when n1=a, n2=b, and n3=c, then the result sizes of queries Q1, Q2, and Q3 
are d, e, and f respectively.



rollup 是从group（a,b,c,d...）最后一个column 开始算 aggregation。假设 d 有 2个，c 有 3个
a b c1 d1
a b c1 d2
a b c1 all_d

a b c2 d1
a b c2 d2
a b c2 all_d

a b c3 d1
a b c3 d2
a b c3 all_d

a b all_c -

以此类推，公式就是：(（last column 的数量+1）* 2nd last column 的数量 +1）* 3rd last column 的数量 +1）

如果 2 2 2，则 num of results in Q1 == 8 .
如果 2 2 2，则 num of results in Q3 == ((2+1)*2 + 1)*2 + 1 == 15
如果 4 7 3，则 num of results in Q1 == 4*7*3 == 84 .
如果 2 2 2，则 num of results in Q3 == ((3+1)*7 + 1)*3 + 1 == 117


"CUBE"
在 a*b*c 基础上，加上 
all_a   b1   c1
all_a   b1   c2
all_a   b2   c1
all_a   b2   c2
all_a   b3   c1
all_a   b3   c2，

加上 

a1   all_b   c1
a1   all_b   c2
a2   all_b   c1
a2   all_b   c2 

再把 a*b 的组合列出来，c 用 all_c 代替

a1   b1  all_c   
a2   b1  all_c   
a1   b2  all_c   
a2   b2  all_c

再把 a* 的列出来，b, c 用 all_b all_c 代替

a1   all_b  all_c   
a2   all_b  all_c    

再把 b* 的列出来，a, c 用 all_a all_c 代替

all_a   b1  all_c   
all_a   b2  all_c   
all_a   b3  all_c    .....

根据此（控制n个 column，然后列出所有其他 column 的组合）规律，
得出 cube 公式为：a*b*c + a*b + b*c + a*c + a + b + c + 1

SUM UP:
rollup 是 hierarchy 的，groupby (abc) cube....则 a是 grand node， b 是 parent node。c 是 leaf node


"EXTRA"
coalesce， select first none null value

SELECT
  coalesce (department, 'All Departments') AS Department,
  coalesce (gender,'All Genders') AS Gender,
  sum(salary) as Salary_Sum
  FROM employee
  
  因为 sql 的 rollup cube 并没有把 sumup 的添加的这个 row 做 alising 操作。。。。所以需要用户自己做.
  
  coalesce (department, 'All Departments') AS Department,
 这里 'All Departments' 是 string，department 是 variable。
这句 clause 意思就是 department 这个 variable 不是 null 就输出 department，
若为 null 则输出 "all department" 这个 constant string
  GROUP BY CUBE (department, gender)
