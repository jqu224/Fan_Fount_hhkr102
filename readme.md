Here we are going to learn SQL    
----------------------
sql执行顺序 
(1)from 
(3) join 
(2) on 
(4) where 
(5)group by(开始使用select中的别名，后面的语句中都可以使用)
(6) avg,sum.... 
(7)having 
(8) select 
(9) distinct 

(10) order by
(11) limit 


--------------------- 
作者：猪哥66 
来源：CSDN 
原文：https://blog.csdn.net/u014044812/article/details/51004754 
版权声明：本文为博主原创文章，转载请附上博文链接！


(8)SELECT  (9) DISTINCT (11) <TOP_specification> <select_list>
(1) FROM          <left_table>
(3) JOIN          <join_type> <right_table>
(2) ON            <join_condition>
(4) WHERE         <where_condition>
(5) GROUP BY      <group_by_list>
(6) WITH          {CUBE | ROLLUP}
(7) HAVING        <having_condition>
(10) ORDER BY     <order_by_list> 
(11) limit 

作者：丶沙工
链接：https://www.jianshu.com/p/bb19b6b0fdc3
来源：简书
简书著作权归作者所有，任何形式的转载都请联系作者获得授权并注明出处。



--------------------
have lots of fun with easy algorithm exercise.   
-------------------


### two resources:     

w3schools - 52 questions    
https://www.w3schools.com/sql/exercise.asp     

hackerrank: - 57 questions    
https://www.hackerrank.com/domains/sql



是时候了，我来解释一下，找 analyst 的工作，          
之后学东西 sql 啊 pandas 啊，都不难的，           
关键是要背一些常规操作 method operator +－× // 啊，之类。             
也不用背，多练练，就熟悉了。             
 
学python的三周，是为了今天的内容打基础，之后都是今天这样的，                 

python自带的那些list不好用，因为python的array list可以是：【1，1.2， ｛212：342｝，【2132，3234】，55】              
这样会增加不必要的空间，对大规模数据或者表格，python会力不从心，变得很慢的。                      
               
                       
-----------------------------------------              
                        
不知道你发现了吗，今天写的numpy array 都是统一int 或者float，（或者str也可以）                
但是一个variable name只能有一种type，回忆一下np.array(list, dtype = int) 这个设定。        
这个设定，大大方便了存储、调用、操作的效率，        

在 Houston 解释过的，numpy a = [1311, 1143, 19115.... 17718] 这样单一type存储，          
使得我们可以通过 a[0] + len(int) 直接访问到下一个element，和python截然不同，            
python的list下一个的大小不确定，可能是一个巨大的dictionary，也可以是个空list，           
需要先数一遍当前element大小，才能知道下一个从哪里开始（当前element的末尾）             

              
              

-----------------------------------------     
你说这不巧嘛～ 
正好，excel 里面的数据每一列的type都是统一的， pandas是用来操作整理excel数据的，              
而 excel 里面的数据就是 numpy 规范的，所以 numpy+pandas是最好的处理、分析 excel 的工具。                

sql 更是一样。type统一方便操作。            
