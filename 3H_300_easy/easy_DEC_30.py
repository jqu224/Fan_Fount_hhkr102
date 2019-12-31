7. Reverse Integer
https://leetcode.com/problems/reverse-integer/

class Solution:
    def reverse(self, x: int) -> int:
        
        temp = str(x)
        if temp[0] == "-":
            answer = int("-"+temp[:0:-1])
        else:
            answer = int(temp[::-1])
            
        if answer >= 1<<31 or answer < -1<<31:
            return 0
        else:
            return answer
