------------------------------------------------------------------
1. Two Sum
```
Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        lst = sorted(nums)
        l = 0
        r = len(lst) - 1
        while l < r:
            if lst[l] + lst[r] > target:
                r -= 1
            elif lst[l] + lst[r] < target:
                l += 1
            else:
                ll = nums.index(lst[l])
                try:
                    rr = nums.index(lst[r], ll+1)
                except:
                    rr = nums.index(lst[r])
                   
                return [ll, rr]
        return []
            
```
