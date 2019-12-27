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
      
