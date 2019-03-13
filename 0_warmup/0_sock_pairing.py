#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the sockMerchant function below.
def sockMerchant(n, ar):
    # create a dict {number: count}
    dict_a = {}
    for i in ar:
        if i in dict_a.keys():
            dict_a[i] += 1
        else:
            dict_a[i] = 1

    ans = 0
    # go through all of the values in the key:values pairs
    for value in dict_a.values():
        # every 2 number counted as a pair: i.e. ans+1
        ans += value//2
    return ans


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input())

    ar = list(map(int, input().rstrip().split()))

    result = sockMerchant(n, ar)

    fptr.write(str(result) + '\n')

    fptr.close()

==========================  NOTES +++++++++++++++++++++++++++++++++++++++



fwrite这些呢，都是基本操作。被GG录取前，savior因为某个原因不用学。
你只需要猜测，这些从你的defined function 的return里 take in了一个返回值return value，大概就是print咯？


import这些，是调用的package，类似你写了很多function，
然后存贮在别的location，你import调用它们，就可以用在当前的这个program李啦

strip的意思是：把一串string进行修剪，譬如：
>>> a
'asdf--as--dfa-ssf---f'
>>> a.rstrip("f")
'asdf--as--dfa-ssf---' 


a = input() 我输 '12312 234s     ' 就是 a== '12312 234s     '
b = input().rstrip() 我输 '12312 234s     ' 就是 b == '12312 234s'


>>> 17 // 2
8
>>> 17 % 2
1
>>> 17/2
8.5


>>> round(15.5)
16
>>> round(15.4)
15
>>>四舍五入


这题要求找袜子，一个fan+一个fan一对算+1，quan和quan一对算+1，fan+quan不能算
那么，建一个dict然后数各种不同的袜子也就是number的出现个数，然后除以二，count // 2，取整就行了

譬如>>> a = {"fan": 10, "quan":15, "bao":9}
>>> a
{'fan': 10, 'quan': 15, 'bao': 9}
for fan: ans = ans + (10//2) -> ans = 5
for quan: ans = ans +(15//2) -> ans = 5+7 = 12.... 这个15//2 是向下取整的除法，15 // 2 == 7
    
for each number, get their value这里存的是｛number：count｝也就是取出 each count 除以二，count // 2，取整，然后sum()


dict特性：只能按照 keys 找 value不能value找key，
因为keys唯一的，
有排他性，而value可以fan：100分 quan：100分
if aaa in dict_a.keys():也是可以的
    
    
    
