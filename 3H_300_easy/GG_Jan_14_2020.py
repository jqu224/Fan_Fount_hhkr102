846. Hand of Straights

class Solution:
    def isNStraightHand(self, hand: List[int], W: int) -> bool:
        d = collections.Counter(hand) 
        for i in sorted(d): 
            if d[i] > 0:
                di = d[i]
                for j in range(i, i+W): 
                    if d[j] >= di:
                        d[j] -= di
                    else: 
                        return False
                else:
                    continue
                return False 
        return True
