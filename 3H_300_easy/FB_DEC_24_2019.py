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
        def iot(node, prev=None, nxt=None):
            low = high = node
            if node.left: # previous will be largest node in left subtree
              low, prev = iot(node.left, prev, node)
            if node.right: # next will be smallest node in right subtree
              nxt, high = iot(node.right, node, nxt)
            node.left, node.right = prev, nxt
            return low, high # smallest node in left tree, largest node in right tree

        if not root: return root
        low, high = iot(root)
        low.left, high.right = high, low
        return low
