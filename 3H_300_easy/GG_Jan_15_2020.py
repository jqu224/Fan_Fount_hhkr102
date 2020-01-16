98

# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None


class Solution:
    def check(self,root,lower = float('-inf'), upper = float('inf')):
        if root is None:
            return True
        
        if root.val<=lower or root.val>=upper:
            return False
        
        if self.check(root.left, lower , root.val) and self.check(root.right, root.val, upper):
            return True
    
    def isValidBST(self, root: TreeNode) -> bool:
        
        return self.check(root)
    
    
class Solution:
    def summaryRanges(self, nums: List[int]) -> List[str]:
        ret = []
        prev = None
        for i in nums: 
            if ret:
                if ret[-1][-1] == i - 1:
                    if len(ret[-1]) == 1:
                        ret[-1].append(i)
                    else:
                        ret[-1][1] = i
                else:
                    ret.append([i])  
            else:
                ret.append([i]) 
            prev = i 
        return ["->".join(list(map(str, r))) for r in ret]
                
