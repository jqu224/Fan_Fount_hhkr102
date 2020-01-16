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
       
777. Swap Adjacent in LR String         
class Solution:
    def canTransform(self, start: str, end: str) -> bool: 
        ret_0 = collections.defaultdict(int)
        ret_1 = collections.defaultdict(int)
        lst_0 = []
        lst_1 = []
        i = 0
        r0 = ""
        r1 = ""
        while i < len(start):
            if start[i] in "LR":
                ret_0[start[i]] += 1
                r0 += start[i]
            if end[i] in "LR":
                ret_1[end[i]] += 1
                r1 += end[i]
            if ret_0["R"] >= ret_1["R"] and ret_0["L"] <= ret_1["L"]:
                pass
            else:
                return False
            i += 1
                 
        return True if r0 == r1 else False
