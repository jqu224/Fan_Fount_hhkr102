5303. Decrypt String from Alphabet to Integer Mapping
class Solution:
    def freqAlphabets(self, s: str) -> str:
        ret = []
        cnt = 0
        last = ""
        for each in s[::-1]: 
            if each == "#":
                cnt = 2
                last = ""
            else:
                if cnt != 0: 
                    cnt -= 1
                    last = each + last 
                else:     
                    ret.append(each)
                    
                if cnt == 0 and last != "":      
                    ret.append(last)
                    last = ""
                 
        res = [] 
        for r in ret[::-1]:
            curr = ord("a") + int(r) - 1
            res.append(chr(curr)) 
        return "".join(res)
