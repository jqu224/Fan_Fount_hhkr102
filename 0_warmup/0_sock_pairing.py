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
