279. Perfect Squares
https://leetcode.com/problems/perfect-squares/
class Solution:
    def numSquares(self, n: int) -> int:
        stack = [(0, 0)]  # (count, sum)
        
        while stack:
            temp = []
            for cnt, sum_ in stack: 
                for i in range(1, round(math.sqrt(n-sum_)//1)+1)[::-1]:
                    sum_t = sum_ + i**2
                    if sum_t == n: 
                        return cnt + 1
                    else:
                        temp.append((cnt+1, sum_t))
            stack = temp
        return -1
            
