1319. Number of Operations to Make Network Connected

class Solution:
    def makeConnected(self, n: int, connections: List[List[int]]) -> int:
        curr = len(connections)
        if curr < n - 1:
            return -1
        
        dict_ = collections.defaultdict(set)
        for l, r in connections:
            dict_[l].add(r)
            dict_[r].add(l)
        
        seen = set()
        grp = 0
        miss = n
        while connections:
            stack = connections.pop(0)
            a, b = stack
            if a not in seen and b not in seen:  
                grp += 1 
            while stack:
                temp = []
                for s in stack:
                    if s not in seen:
                        seen.add(s)
                        miss -= 1
                        temp.extend(list(dict_[s])) 
                stack = temp
        

        
        return grp - 1 + miss
