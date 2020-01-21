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
        self.preorder(root, {})
        return self.res
        
        
    def preorder(self, root, d):
        if not root:
            return ''
        Str = "("
        Str += self.preorder(root.left, d)  
        Str += str(root.val)  
        Str += self.preorder(root.right, d)  
        Str += ")"
        
        if (Str in d and d[Str] == 1):
            self.res.append(root)
        if Str in d: 
            d[Str] += 1
        else: 
            d[Str] = 1
        
        return Str
