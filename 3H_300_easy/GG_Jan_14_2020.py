846. Hand of Straights

class Solution:
    def isNStraightHand(self, hand: List[int], W: int) -> bool:
        d = collections.Counter(hand) 
        for i in sorted(d): 
            if d[i] > 0:
                di = d[i]
                for j in range(i, i+W): 
                    if d[j] >= di:
                        d[j] -= di
                    else: 
                        return False
                else:
                    continue
                return False 
        return True
    
47. Permutations II
https://leetcode.com/problems/permutations-ii/
class Solution: 
    def permuteUnique(self, nums): # dfs

        nums.sort() 
        perms = []

        def _permutation(perm, left):
            # perm: 
            # left: what is left to add to perm 
            if len(perm) == len(nums):
                perms.append(perm)
            else:
                for i in range(len(left)):
                    if i != 0 and left[i] == left[i-1]: # avoid duplicate
                        continue
                    _permutation(perm+[left[i]], left[:i]+left[(i+1):])

        _permutation([], nums)
        return perms
