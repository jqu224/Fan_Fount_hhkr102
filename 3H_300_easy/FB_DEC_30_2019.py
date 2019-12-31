199. Binary Tree Right Side View

# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def rightSideView(self, root: TreeNode) -> List[int]:
        ret = []
        stack = [root]
        while stack:
            temp = []
            if stack[-1]:
                ret.append(stack[-1].val)
            for s in stack:
                if s:  
                    if s.left:
                        temp.append(s.left)
                    if s.right:
                        temp.append(s.right) 
            stack = temp
        return ret
        
        
