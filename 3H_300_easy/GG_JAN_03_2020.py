1007. Minimum Domino Rotations For Equal Row
https://leetcode.com/problems/minimum-domino-rotations-for-equal-row/submissions/
class Solution:
    def minDominoRotations(self, A: List[int], B: List[int]) -> int:
        if not A:
            return 0
        cnt = 0
        top = A[0]
        but = B[0]
        for i in range(1, len(A)):
            if A[i] == top:
                pass 
            elif B[i] == top:
                cnt += 1 
            else:
                cnt = float("inf")
                break
        else: 
            if cnt >= len(A) // 2:
                cnt = len(A) - cnt 
        cnt2 = 0
        for i in range(1, len(A)):
            if B[i] == but:
                pass 
            elif A[i] == but:
                cnt2 += 1 
            else:
                cnt2 = float("inf")
                break
        else:
            if cnt2 >= len(A) // 2:
                cnt2 = len(A) - cnt2
                
        top = B[0]
        but = A[0]
        cnt3 = 1
        for i in range(1, len(A)):
            if A[i] == top:
                pass 
            elif B[i] == top:
                cnt3 += 1 
            else:
                cnt3 = float("inf")
                break
        else: 
            if cnt3 >= len(A) // 2:
                cnt3 = len(A) - cnt3
                
        cnt4 = 1
        for i in range(1, len(A)):
            if B[i] == but:
                pass 
            elif A[i] == but:
                cnt4 += 1 
            else:
                cnt4 = float("inf")
                break
        else: 
            if cnt4 >= len(A) // 2:
                cnt4 = len(A) - cnt4  
        if cnt2 == cnt == cnt3 == cnt4 == float("inf"):
            return -1
        return min(cnt, cnt2, cnt3, cnt4)

# Java 2 times
  public int minDominoRotations(int[] A, int[] B) {
      int n = A.length;
      for (int i = 0, a = 0, b = 0; i < n && (A[i] == A[0] || B[i] == A[0]); ++i) {
          if (A[i] != A[0]) a++;
          if (B[i] != A[0]) b++;
          if (i == n - 1) return Math.min(a, b);
      }
      for (int i = 0, a = 0, b = 0; i < n && (A[i] == B[0] || B[i] == B[0]); ++i) {
          if (A[i] != B[0]) a++;
          if (B[i] != B[0]) b++;
          if (i == n - 1) return Math.min(a, b);
      }
      return -1;
  }              


981. Time Based Key-Value Store
https://leetcode.com/problems/time-based-key-value-store/

class TimeMap:

    def __init__(self):
        """
        Initialize your data structure here.
        """
        self.i = collections.defaultdict(lambda: [0])
        
            
    def set(self, key: str, value: str, timestamp: int) -> None: 
        self.i[key][0] += 1
        self.i[key].append([timestamp, value])

    def get(self, key: str, timestamp: int) -> str:
        r = self.i[key][0]
        l = 0
        
        while l < r:
            mid = l + (r-l)//2 + 1
            
            t, v = self.i[key][mid]
            if t == timestamp:
                return v
            if t < timestamp:
                l = mid
            if t > timestamp:
                r = mid - 1
                
        if l == 0:
            return ""
        
        return self.i[key][l][1]
        
import bisect
from collections import defaultdict


class TimeMap:

    def __init__(self):
        """
        Initialize your data structure here.
        """
        self.times = defaultdict(list)
        self.values = defaultdict(list)

    # ex: key = 'foo', value = 'bar', timestamp = 1
    def set(self, key: str, value: str, timestamp: int) -> None:
        self.times[key].append(timestamp)
        self.values[key].append(value)

    def get(self, key: str, timestamp: int) -> str:
        i = bisect.bisect_right(self.times[key], timestamp)
        if i:
            return self.values[key][i - 1]
        return ''

# Your TimeMap object will be instantiated and called as such:
# obj = TimeMap()
# obj.set(key,value,timestamp)
# param_2 = obj.get(key,timestamp)


from collections import Counter
class Solution:
    def longestStrChain(self, words: List[str]) -> int:
        n = len(words)
        if n == 1:
            return 1

        maxLen = 1
        sortedWs = sorted(words, key=lambda w: len(w))
        wMap = {}
        for i in range(n):
            wMap[sortedWs[i]] = i
        minWL = len(sortedWs[0])
        memo = [1] * n
        for i in range(n):
            w = sortedWs[i]
            l = len(w)
            if l == minWL:
                continue

            maxChainL = 0
            # Max chain lens from its predecessors
            for j in range(l):
                predW = w[:j] + w[j + 1:]
                if predW not in wMap:
                    continue

                maxChainL = max(maxChainL, memo[wMap[predW]])
                if maxChainL == l - minWL:
                    break

            memo[i] = maxChainL + 1
            maxLen = max(maxLen, memo[i])

        return maxLen
