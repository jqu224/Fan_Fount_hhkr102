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
    
    
class Solution:
    def watchedVideosByFriends(self, w: List[List[str]], f: List[List[int]], i: int, l: int) -> List[str]:
        if not f:
            return []
        memo = set([i, *f[i]])
        stack = f[i] 
        while l - 1 > 0:
            l -= 1
            temp = []
            for s in stack: 
                for ss in f[s]:
                    if ss not in memo:
                        memo.add(ss)
                        temp.append(ss) 
            stack = temp 
        ret = []
        stack = set(stack) 
        for s in stack: 
            ret.extend(w[s])
        ret = collections.Counter(ret)
        rrr = collections.defaultdict(list)
        for k, v in ret.items():
            rrr[v].append(k)
        res = []
        for k in sorted(rrr): 
            print(sorted(rrr[k]))
            res.extend(sorted(rrr[k]))
        return res
            
        
