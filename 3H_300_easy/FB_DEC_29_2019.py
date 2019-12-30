1300. Sum of Mutated Array Closest to Target

class Solution:    
    def findBestValue(self, A, target):
        A.sort(reverse=1)
        maxA = A[0]
        while A and target >= A[-1] * len(A):
            target -= A.pop()
        if A:
            return int((target + len(A) / 2.0 - 0.1) / len(A))
        else:
            return maxA
          
class 
sort arr
get t//l
if t//l <= arr[0] return t//l
else 
  for i, n in enumerate(arr) 
    if (t - n) // (l-i) > next
      pass
    else:
      return (t - n) // (l-i)
      
