221. Maximal Square
https://leetcode.com/problems/maximal-square/
  
class Solution:
    def maximalSquare(self, matrix: List[List[str]]) -> int:
        if not matrix:
            return 0
        org = matrix.copy()
        r, c = len(matrix), len(matrix[0])
        map_ = [[0 for _ in range(c+1)] for i in range(r+1)] 
        max_ = 0
        for i in range(1, r+1):
            for j in range(1, c+1):
                if org[i-1][j-1] == "1": 
                    map_[i][j] = min(map_[i-1][j], map_[i-1][j-1], map_[i][j-1]) + 1
                    max_ = max(max_, map_[i][j])
        return max_**2
                    
        
class Solution:
    def maximalSquare(self, matrix: List[List[str]]) -> int:
        if not matrix:
            return 0
        org = matrix.copy()
        r, c = len(matrix), len(matrix[0])
        map_ = [[0 for _ in range(c+1)] for i in range(r+1)] 
        max_ = 0
        for i in range(1, r+1):
            for j in range(1, c+1):
                if org[i-1][j-1] == "1": 
                    map_[i][j] = min(map_[i-1][j], map_[i-1][j-1], map_[i][j-1]) + 1
                    max_ = max(max_, map_[i][j])
        return max_**2
                    
        
528
class Solution:

    def __init__(self, w: List[int]):
        self.w = list(itertools.accumulate(w))
        
    def pickIndex(self) -> int:
        x = random.choices(range(len(self.w)), cum_weights=self.w)
        return x[0]
            
                           
class Solution:

    def __init__(self, w: List[int]):
        total = sum(w)
        self._accum_weights = list(itertools.accumulate(weight / total for weight in w))    

    def pickIndex(self) -> int:
        return bisect.bisect_left(self._accum_weights, random.random())

            
class Solution: 
    def __init__(self, w: List[int]): 
        self.summ = 0
        self.listt = []
        for i in w:
            self.listt.append(self.summ+i)
            self.summ += i
             
    def pickIndex(self) -> int:
        pick = random.randint(0, self.summ)
        l, r = 0, len(self.listt) - 1
        while l + 1 < r:
            mid = l + (r - l)//2 
            if pick < self.listt[mid]:
                r = mid 
            elif pick > self.listt[mid]:
                l = mid 
            else:
                r = mid
                break
        return l if self.listt[l] > pick else r
  


# Your Solution object will be instantiated and called as such:
# obj = Solution(w)
# param_1 = obj.pickIndex()
