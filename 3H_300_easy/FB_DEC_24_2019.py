"""
426. Convert Binary Search Tree to Sorted Doubly Linked List
https://leetcode.com/problems/convert-binary-search-tree-to-sorted-doubly-linked-list/
"""
"""
# Definition for a Node.
class Node:
    def __init__(self, val, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
"""

class Solution:
    first, last = None, None
    def treeToDoublyList(self, root: 'Node') -> 'Node': 
        if not root:
            return None 
        def helper(node): 
            if node:
                # left
                helper(node.left)
                # node 
                if self.last:
                    # link the previous node (last)
                    # with the current one (node)
                    self.last.right = node
                    node.left = self.last
                else:
                    # keep the smallest node
                    # to close DLL later on
                    self.first = node        
                self.last = node
                # right
                helper(node.right)
        
        helper(root)
        # close DLL
        self.last.right = self.first
        self.first.left = self.last
        return self.first
"""
# Definition for a Node.
class Node:
    def __init__(self, val, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
""" 
class Solution:
    def treeToDoublyList(self, root: 'Node') -> 'Node':
         
        if not root: return None
		
		# inorder traversal
        prv = self.treeToDoublyList(root.left)
        nxt = self.treeToDoublyList(root.right)
        
        head = tail = root
        if nxt: #then connect nxt
            tail = nxt.left
            root.right = nxt
            nxt.left = root
        if prv: #then connect prv
            head = prv
            root.left = prv.left
            prv.left.right = root
			
        #finally connect head and tail
        head.left = tail
        tail.right = head
        
        return head

class Solution:
    def treeToDoublyList(self, root: 'Node') -> 'Node':
          
    
        if not root:
            return 
        stack = []
        trav = root
        prev = None
        while stack or trav:
            if trav:
                stack.append(trav)
                trav = trav.left
            else:
                u = stack.pop()
                trav = u.right
                if u:
                    if prev:
                        prev.right = u
                        u.left = prev
                    else:
                        head = u
                    prev = u
        prev.right = head
        head.left = prev
        return head
