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

             
