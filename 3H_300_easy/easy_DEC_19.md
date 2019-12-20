325 maximum-size-subarray-sum-equals-k
https://leetcode.com/problems/maximum-size-subarray-sum-equals-k/

560 subarray-sum-equals-k
https://leetcode.com/problems/subarray-sum-equals-k/

```
from collections import defaultdict
class Solution:
    def subarraySum(self, nums: List[int], k: int) -> int: 
        dict_ = collections.defaultdict(int, {0:1})
        presum = 0
        c = 0
        for i in nums:
            presum += i 
            req = presum - k 
            c += dict_[req] 
            dict_[presum] += 1 
        return c
        
# 560 325
class Solution:
    def maxSubArrayLen(self, nums: List[int], k: int) -> int:
        # presum
        presum = 0
        seen = {}
        l = 0
        for i in range(len(nums)):
            presum += nums[i]
            if presum == k:
                l = max(l, i+1)
            else:
                req = presum - k
                if req in seen:
                    l = max(l, i - seen[req])
            
            if presum not in seen:
                seen[presum] = i
        return l
```


        
