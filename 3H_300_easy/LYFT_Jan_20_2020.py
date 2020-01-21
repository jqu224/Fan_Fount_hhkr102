127. Word Ladder
https://leetcode.com/problems/word-ladder/
class Solution(object):
    def ladderLength(self, beginWord, endWord, wordList):
        """
        :type beginWord: str
        :type endWord: str
        :type wordList: List[str]
        :rtype: int
        """
        if not wordList or endWord not in wordList:
            return 0
        inter_state_dic = defaultdict(set)
        for word in wordList:
            for i in range(len(word)):
                inter_state_dic[word[:i] + '*' + word[i+1:]].add(word)
        visited = {beginWord:None}
        q = [[beginWord]]
        while True:
            nei = []
            for word in q[len(q)-1]:
                for i in range(len(word)):
                    state = word[:i] + '*' + word[i+1:]
                    for nextword in inter_state_dic[state]:
                        if nextword not in visited:
                            visited[nextword] = word
                            nei.append(nextword)
            if len(nei) == 0:
                break
            q.append(nei)
            if endWord in visited:
                break
        if endWord not in visited:        
            return 0
        return len(q)
      
from collections import defaultdict
class Solution(object):
    def ladderLength(self, beginWord, endWord, wordList):
        """
        :type beginWord: str
        :type endWord: str
        :type wordList: List[str]
        :rtype: int
        """
        if not wordList or endWord not in wordList:
            return 0
        inter_state_dic = defaultdict(set)
        for word in wordList:
            for i in range(len(word)):
                inter_state_dic[word[:i] + '*' + word[i+1:]].add(word)
        visited = {beginWord:None}
        q = [[beginWord]]
        while True:
            nei = []
            for word in q[len(q)-1]:
                for i in range(len(word)):
                    state = word[:i] + '*' + word[i+1:]
                    for nextword in inter_state_dic[state]:
                        if nextword not in visited:
                            visited[nextword] = word
                            nei.append(nextword)
            if len(nei) == 0:
                break
            q.append(nei)
            if endWord in visited:
                break
        if endWord not in visited:        
            return 0
        return len(q)
      
      
652. Find Duplicate Subtrees
https://leetcode.com/problems/find-duplicate-subtrees/
class Solution:
    def findDuplicateSubtrees(self, root: TreeNode) -> List[TreeNode]:
        self.res = []
        self.inorder(root, {})
        return self.res
        
        
    def preorder(self, root, d):
        if not root:
            return ''
        Str = "("
        Str += self.inorder(root.left, d)  
        Str += str(root.val)  
        Str += self.inorder(root.right, d)  
        Str += ")"
        
        if (Str in d and d[Str] == 1):
            self.res.append(root)
        if Str in d: 
            d[Str] += 1
        else: 
            d[Str] = 1
        
        return Str
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution(object):
    def findDuplicateSubtrees(self, root):
        count = collections.Counter()
        ans = []
        def collect(node):
            if not node: return "#"
            serial = "{},{},{}".format(collect(node.left), collect(node.right), node.val) 
            count[serial] += 1
            if count[serial] == 2:
                ans.append(node)
            return serial

        collect(root)
        return ans   
    
406. Queue Reconstruction by Height
https://leetcode.com/problems/queue-reconstruction-by-height/
class Solution:
    def reconstructQueue(self, people: List[List[int]]) -> List[List[int]]:
        rank = {}
        hp = []
        seen = set()
        count = collections.Counter([i for i, p in people]) 
        dt = collections.defaultdict(list)
        for h, k in people: 
            dt[h].append(k)
            if h not in seen:
                seen.add(h)
                heapq.heappush(hp, h)
        cnt = 0
        while hp:
            rank[cnt] = heapq.heappop(hp)
            cnt += 1
        ret = ["" for i in range(len(people))]
        memo = [i for i in range(len(people))]
        for r in sorted(rank): 
            for inx in sorted(dt[rank[r]])[::-1]: 
                ret[memo.pop(inx)] = [rank[r], inx] 
        return ret
        
