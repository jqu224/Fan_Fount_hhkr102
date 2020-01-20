1004. Max Consecutive Ones III

class Solution:
    def longestOnes(self, A: List[int], K: int) -> int:
        zeros = []
        for i, n in enumerate(A):
            if n == 0:
                zeros.append(i)
        left, right = zeros[:K], zeros[K:] + [len(A)]
        max_ = right[0]
        for i in range(len(right)-1):
            left.append(right[i])
            l = left.pop(0)
            r = right[i+1] 
            max_ = max(max_, r-l-1)
                
        return max_
        
238 https://leetcode.com/problems/product-of-array-except-self/

class Solution:
    def productExceptSelf(self, nums: List[int]) -> List[int]:
        left_r = [1]
        right_l = [1] 
        for i in nums:
            left_r.append(left_r[-1]*i) 
        for i in nums[::-1]:
            right_l.append(right_l[-1]*i) 
        right_l = right_l[::-1]
        
        ret = []
        for i in range(len(nums)):
            ret.append(left_r[i]*right_l[i+1])
        return ret    
    
365 water and jug
https://leetcode.com/problems/water-and-jug-problem
    
class Solution:
    def canMeasureWater(self, x: int, y: int, z: int) -> bool:
        if z == 0:
            return True
        if x+y<z:
            return  False
        return z % self.gcd(x, y) == 0;

    def gcd(self,a,b):
        if a%b == 0:
            return b
        else :
            return self.gcd(b,a%b)
        
        class Solution:
    def canMeasureWater(self, x: int, y: int, z: int) -> bool:
        x, y = (y, x) if y < x else (x, y)
        if x == z or y == z:
            return True
        if x == 0 or y == 0:
            return False 
        if z > x + y:
            return False
        if z % x == 0:
            return True
        if z == x + y:
            return True 
        if y % x == 0:
            return False
        if math.gcd(x,y) != 1 and z % math.gcd(x,y) != 0:
            return False
        if z % math.gcd(x,y) == 0:
            return True
        return True
