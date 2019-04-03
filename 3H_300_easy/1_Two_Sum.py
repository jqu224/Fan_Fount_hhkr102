class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        temp_d = {}
        for i, num in enumerate(nums): 
            if num in temp_d:
                return list((temp_d[num],i))
            else:
                temp_d[target-num] = i 
        
        
        https://leetcode.com/problems/two-sum/
