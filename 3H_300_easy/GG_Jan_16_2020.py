289. Game of Life
https://leetcode.com/problems/game-of-life/


class Solution:
    def gameOfLife(self, board: List[List[int]]) -> None:
        """
        Do not return anything, modify board in-place instead.
        """
        n, m = len(board), len(board[0])
        dp = [[0 for i in range(m+3)] for j in range(n+3)]  
        for i in range(2, n+3):
            for j in range(2, m+3):  
                if i -2 < n and j -2 < m:
                    dp[i][j] += board[i-2][j-2]
                dp[i][j] += dp[i][j-1] + dp[i-1][j] - dp[i-1][j-1] 
        for d in dp:
            print(d)
        for i in range(n):
            for j in range(m):
                curr = board[i][j] 
                nei = dp[i][j] - dp[i+3][j] - dp[i][j+3] + dp[i+3][j+3] - curr 
                if curr and nei <= 1: 
                    board[i][j] = 0
                elif curr and 1 < nei < 4:
                    board[i][j]  = 1
                elif curr and nei >= 4:
                    board[i][j]  = 0
                elif not curr and nei == 3:
                    board[i][j] = 1 
        
        return board
        
284. Peeking Iterator
https://leetcode.com/problems/peeking-iterator/
# Below is the interface for Iterator, which is already defined for you.
#
# class Iterator:
#     def __init__(self, nums):
#         """
#         Initializes an iterator object to the beginning of a list.
#         :type nums: List[int]
#         """
#
#     def hasNext(self):
#         """
#         Returns true if the iteration has more elements.
#         :rtype: bool
#         """
#
#     def next(self):
#         """
#         Returns the next element in the iteration.
#         :rtype: int
#         """
class PeekingIterator:
    def __init__(self, iterator):
        """
        Initialize your data structure here.
        :type iterator: Iterator
        """
        self.iterator = iterator
        self.val = 0
        self.walk = False
        
    def peek(self):
        """
        Returns the next element in the iteration without advancing the iterator.
        :rtype: int
        """
        if not self.walk:
            self.val = self.iterator.next()
            self.walk = True
            return self.val
        else:
            return self.val

    def next(self):
        """
        :rtype: int
        """
        if self.walk:
            self.walk = False
            return self.val
        else:
            self.val = self.iterator.next()
            return self.val
            
        

    def hasNext(self):
        """
        :rtype: bool
        """
        if not self.walk:
            return self.iterator.hasNext()
        else:
            return True
        
524
from typing import List
from collections import OrderedDict


class Solution:
    def findLongestWord(self, s: str, d: List[str]) -> str:
        d.sort(key=lambda x: (-len(x), x), reverse=True)
        for cand in d[::-1]:
            ind = 0
            for i in cand:
                found_index = s[ind:].find(i)
                ind += found_index
                if found_index != -1:
                    ind += 1
                    continue
                else:
                    ind = len(s) + 2
                    break
            if ind <= len(s):
                return cand
        return ""
