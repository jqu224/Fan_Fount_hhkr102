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
