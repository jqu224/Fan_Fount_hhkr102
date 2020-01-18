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
            
class Solution:
    def numSquares(self, n: int) -> int:
        squares = [i**2 for i in range(1, int(n**0.5)+1)]
        d, q, nq = 1, {n}, set()
        while q:
            for node in q:
                for square in squares:
                    if node == square: return d
                    if node < square: break
                    nq.add(node-square)
            q, nq, d = nq, set(), d+1

