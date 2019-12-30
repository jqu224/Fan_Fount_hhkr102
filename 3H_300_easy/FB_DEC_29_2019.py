1300. Sum of Mutated Array Closest to Target

class Solution:    
    def findBestValue(self, A, target):
        A.sort(reverse=1)
        maxA = A[0]
        while A and target >= A[-1] * len(A):
            target -= A.pop()
        if A:
            return int((target + len(A) / 2.0 - 0.1) / len(A))
        else:
            return maxA
          
class 
sort arr
get t//l
if t//l <= arr[0] return t//l
else 
  for i, n in enumerate(arr) 
    if (t - n) // (l-i) > next
      pass
    else:
      return (t - n) // (l-i)
      
1302. Deepest Leaves Sum
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def deepestLeavesSum(self, root: TreeNode) -> int:
        head = root
        stack = [(root, 0)]
        while stack:
            
            temp = []
            for s, lvl in stack: 
                if s.left:
                    temp.append((s.left, lvl+1))
                if s.right:
                    temp.append((s.right, lvl+1))
            if temp:
                stack = temp
            else:
                break
        ret = 0
        for s, lvl in stack:
            ret += s.val
        return ret
