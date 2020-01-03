987. Vertical Order Traversal of a Binary Tree
https://leetcode.com/problems/vertical-order-traversal-of-a-binary-tree/

# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def verticalTraversal(self, root: TreeNode) -> List[List[int]]:
        dict_ = collections.defaultdict(list)
        head = root
        stack = [(head, 0)]
        hi = 0
        while stack:
            temp = []
            for (s, lvl) in stack:
                if s:
                    dict_[lvl].append((hi, s.val))
                    if s.left:
                        temp.append((s.left, lvl-1))
                    if s.right:
                        temp.append((s.right, lvl+1))
            hi += 1
            stack = temp
        ret = []
        for k in sorted(dict_.keys()):
            ret.append([j for i, j in sorted(dict_[k])])
        return ret
            
1249. Minimum Remove to Make Valid Parentheses
https://leetcode.com/problems/minimum-remove-to-make-valid-parentheses/


            
