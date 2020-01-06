
430. Flatten a Multilevel Doubly Linked List
https://leetcode.com/problems/flatten-a-multilevel-doubly-linked-list/
"""
# Definition for a Node.
class Node:
    def __init__(self, val, prev, next, child):
        self.val = val
        self.prev = prev
        self.next = next
        self.child = child
"""
class Solution:
    
    def flatten(self, head: 'Node') -> 'Node':
        if not head:
            return None
        
        stack, prev = [head], None
        
        while stack:
            curr = stack.pop()
            
            if prev:
                prev.next, curr.prev = curr, prev
            
            prev = curr
            
            if curr.next:
                stack.append(curr.next)
            
            if curr.child:
                stack.append(curr.child)
                curr.child = None
        return head
    
222. Count Complete Tree Nodes
class Solution:
    cnt = 0
    def countNodes(self, root: TreeNode) -> int: 
        def dfs(node):
            if not node:
                return 
            self.cnt += 1
            dfs(node.left)  
            dfs(node.right)    
        dfs(root)
        return self.cnt 

class Solution:
    def countNodes(self, root):
        if not root:
            return 0
        h1, h2 = self.height(root.left), self.height(root.right) 
        if h1 > h2: # right child is full 
            return self.countNodes(root.left) +  2 ** h2
        else: # left child is full 
            return 2 ** h1 + self.countNodes(root.right)


    def height(self, root):
        if not root:
            return 0
        return self.height(root.left) + 1
    
