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
        
        
986. Interval List Intersections
class Solution:
    def intervalIntersection(self, A: List[List[int]], B: List[List[int]]) -> List[List[int]]:
        ret = []
        while A and B:
            if A:
                a_0, a_1 = A[0]
            if B:
                b_0, b_1 = B[0]

            if a_0 <= b_0 <= b_1 <= a_1:
                ret.append([b_0, b_1])
            elif b_0 <= a_0 <= b_1 <= a_1:
                ret.append([a_0, b_1])
            elif b_0 <= a_0 <= a_1 <= b_1:
                ret.append([a_0, a_1]) 
            elif a_0 <= b_0 <= a_1 <= b_1:
                ret.append([b_0, a_1])
            elif a_0 <= a_1 <= b_0 <= b_1:
                pass
            elif b_0 <= b_1 <= a_0 <= a_1:
                pass

            if a_1 < b_1:
                A.pop(0)
            else:
                B.pop(0)
        return ret
            
863. All Nodes Distance K in Binary Tree     
https://leetcode.com/problems/all-nodes-distance-k-in-binary-tree/
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None
# (i-1)//2
# i*2+1
# i*2+2
class Solution:
    def distanceK(self, root: TreeNode, target: TreeNode, K: int) -> List[int]:
        stack = [(root, 0)]
        l = 0
        dict_ = {}
        while stack:
            temp = []
            for s, i in stack:
                if s: 
                    dict_[i] = [s, True]
                    if s == target: 
                        l = i
                    if s.left:
                        temp.append([s.left, i*2+1])
                    if s.right:
                        temp.append([s.right, i*2+2])
            stack = temp
        
        stack = [(l, K)]
        ret = []
        while stack: 
            temp = [] 
            for i, dis in stack:
                if dis > 0:
                    if i*2+1 in dict_ and dict_[i*2+1][1] == True:
                        temp.append([i*2+1, dis - 1]) 
                    if i*2+2 in dict_ and dict_[i*2+2][1] == True:
                        temp.append([i*2+2, dis - 1])  
                    if (i-1)//2 in dict_ and dict_[(i-1)//2][1] == True:
                        temp.append([(i-1)//2, dis - 1]) 
                    dict_[i][1] = False
                else:
                    ret.append(dict_[i][0].val)
            stack = temp
        return ret
    
    
    
