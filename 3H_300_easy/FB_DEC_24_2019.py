"""
523. Continuous Subarray Sum
https://leetcode.com/problems/continuous-subarray-sum/
"""
class Solution:
    def checkSubarraySum(self, nums: List[int], k: int) -> bool:
        if len(nums) < 2:
            return False
        if not k:
            prev = nums[0]
            c = 0
            for i in nums[1:]:
                if i == 0 and prev == 0:
                    return True
                elif i == 0:
                    c, prev = 1, 0
                else:
                    c, prev = 0, i
            return False
        sum_ = 0
        dict_ = {}
        for i, n in enumerate(nums):
            sum_ += n
            rem = sum_ % k 
            if rem != 0:
                if rem not in dict_:
                    dict_[rem] = i, sum_
                else:
                    if i - dict_[rem][0] > 1: 
                        return True
            elif i > 0:
                return True
        return False
    """
    pre_sum
    """
    def checkSubarraySum(self, nums: List[int], k: int) -> bool:
        mp = {0: -1}
        prefix_sum = 0
        for i, num in enumerate(nums):
            prefix_sum += num
            if k != 0:
                prefix_sum = prefix_sum % k
            if prefix_sum in mp:
                if i - mp[prefix_sum] > 1:
                    return True
            else:
                mp[prefix_sum] = i

        return False
