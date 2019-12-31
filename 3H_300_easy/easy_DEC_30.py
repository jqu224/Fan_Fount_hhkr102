7. Reverse Integer
https://leetcode.com/problems/reverse-integer/

class Solution:
    def reverse(self, x: int) -> int:
        
        temp = str(x)
        if temp[0] == "-":
            answer = int("-"+temp[:0:-1])
        else:
            answer = int(temp[::-1])
            
        if answer >= 1<<31 or answer < -1<<31:
            return 0
        else:
            return answer
        
509. Fibonacci Number
class Solution:
    def fib(self, N: int) -> int:
        def dfs(n):
            if n > 1: 
                return dfs(n-1) + dfs(n-2)
            else:
                return n
        return dfs(N)
    
class Solution:
    def fib(self, N: int) -> int:
        if N == 0:
            return 0
        if N == 1:
            return 1
        
        
        return self.fib(N-1) + self.fib(N-2)
    
class Solution:
    def fib(self, N: int) -> int:
        if N < 2:
            return N
        
        a, b = 0, 1
        result = 0
        for i in range(2, N+1):
            result = a + b
            a = b
            b = result
             
        return result
