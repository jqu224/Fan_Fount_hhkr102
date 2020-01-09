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
                    
        
