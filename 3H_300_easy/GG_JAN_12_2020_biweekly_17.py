1315. Sum of Nodes with Even-Valued Grandparent
https://leetcode.com/contest/biweekly-contest-17/problems/sum-of-nodes-with-even-valued-grandparent/

class Solution:
    def sumEvenGrandparent(self, root: TreeNode) -> int:
        sum_ = 0
        stack = [(root, False, False)]
        while stack:
            curr, fa, grad_even = stack.pop()
            if curr:
                if grad_even == True:
                    sum_ += curr.val 
                if fa != False and fa % 2 == 0:
                    new_grad = True
                else:
                    new_grad = False 
                stack.append((curr.left, curr.val, new_grad))
                stack.append((curr.right, curr.val, new_grad))
        return sum_
