325 maximum-size-subarray-sum-equals-k
https://leetcode.com/problems/maximum-size-subarray-sum-equals-k/

560 subarray-sum-equals-k
https://leetcode.com/problems/subarray-sum-equals-k/

```
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


        
