1305. All Elements in Two Binary Search Trees

# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def getAllElements(self, root1: TreeNode, root2: TreeNode) -> List[int]:
        one, two = [], []

        def inorder(root, i):
            if not root:
                return 
            inorder(root.left, i)
            if i == "1":
                one.append(root.val)
            else:
                two.append(root.val) 
            inorder(root.right, i)

        inorder(root1, "1")
        inorder(root2, "2")
        if not one:
            return two
        elif not two:
            return one  
        
        ret = [] 
        while one:
            left = one.pop(0)  
            while two:
                right = two[0]
                if left > right:
                    ret.append(two.pop(0))  
                else:
                    ret.append(left)  
                    left = None
                    break 
            if two == []: 
                if left != None:
                    ret.append(left)
                ret.extend(one)
                break 
                
        return ret + two
    
1306. Jump Game III 
class Solution:
    def canReach(self, arr: List[int], start: int) -> bool:
        def valid(pos):
            if 0 > pos or pos >= l:
                return False
            if memo[pos] == False:
                memo[pos] = True
                return True
            else:
                return False
        memo = [False]*len(arr)
        l = len(arr)
        stack = [start]
        while stack:
            temp = []
            for pos in stack:
                if arr[pos] == 0:
                    return True
                if valid(pos+arr[pos]): 
                    temp.append(pos+arr[pos]) 
                if valid(pos-arr[pos]): 
                    temp.append(pos-arr[pos])  
            stack = temp
            
        return False
