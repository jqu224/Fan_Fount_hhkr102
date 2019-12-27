215. Kth Largest Element in an Array
https://leetcode.com/problems/kth-largest-element-in-an-array/

from heapq import * 
class Solution:
    def findKthLargest(self, nums: List[int], k: int) -> int:
        h = []
        for n in nums:
            heappush(h, -n)
        t = 0
        for i in range(k):
            t = - heappop(h)
        return t
      
class Solution:
    def findKthLargest(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: int
        """
        min_heap = [-float('inf')] * k
        heapq.heapify(min_heap)
        for num in nums:
            if num > min_heap[0]:
                heapq.heappop(min_heap)
                heapq.heappush(min_heap, num)
        return min_heap[0]       

785. Is Graph Bipartite?
https://leetcode.com/problems/is-graph-bipartite
    
class Solution:
    def isBipartite(self, graph: List[List[int]]) -> bool:
        color = {}
        for i, node in enumerate(graph):
            if i not in color:
                stack = [i]
                color[i] = 0
                while stack:
                    j = stack.pop()
                    for each in graph[j]:
                        if each not in color:
                            stack.append(each)
                            color[each] = 1 ^ color[j] 
                        elif color[each] == color[j]:
                            return False 
        return True
    
class Solution:
    def isBipartite(self, graph):
        color = {}
        def dfs(pos):
            for i in graph[pos]:
                if i in color:
                    if color[i] == color[pos]:
                        return False
                else:
                    color[i] = 1 - color[pos]
                    if not dfs(i):
                        return False
            return True
        for i in range(len(graph)):
            if i not in color:
                color[i] = 0
                if not dfs(i):
                    return False
        return True
