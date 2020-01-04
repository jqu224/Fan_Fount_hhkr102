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

class Solution:
    def minRemoveToMakeValid(self, s: str) -> str:
        ret = []
        string = list(s)
        for i, cha in enumerate(string):
            if cha == "(":
                ret.append((i, "("))
            elif cha == ")" and ret and ret[-1][1] == "(":
                ret.pop() 
            elif cha == ")":
                ret.append((i, ")")) 
        for i, cha in ret[::-1]:
            string.pop(i)
        return "".join(string)
            
                
143. Reorder List
https://leetcode.com/problems/reorder-list/
class Solution:
    def reorderList(self, head: ListNode) -> None:
        """
        Do not return anything, modify head in-place instead.
        """

        if not head:
            return None
        fast = slow = head

        while fast and fast.next:
            fast = fast.next.next
            slow = slow.next
        head1, head2 = head, slow.next
        slow.next = None

        cur, pre = head2, None
        while cur:
            temp = cur
            cur = cur.next 
            temp.next = pre
            pre = temp


        cur1, cur2 = head1, pre
        while cur2:
            nex1, nex2= cur1.next, cur2.next
            cur1.next = cur2
            cur2.next = nex1
            cur1 , cur2 = nex1, nex2
            
