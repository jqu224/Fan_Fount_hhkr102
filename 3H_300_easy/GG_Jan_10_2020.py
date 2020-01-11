904. Fruit Into Baskets
https://leetcode.com/problems/fruit-into-baskets/
class Solution(object):
    def totalFruit(self, tree):
        ans = i = 0
        count = collections.Counter()
        for j, x in enumerate(tree):
            count[x] += 1
            while len(count) >= 3:
                count[tree[i]] -= 1
                if count[tree[i]] == 0:
                    count.pop(tree[i])
                i += 1
            ans = max(ans, j - i + 1)
        return ans
    
class Solution(object):
    def totalFruit(self, tree):
        count, i = {}, 0
        for j, v in enumerate(tree):
            count[v] = count.get(v, 0) + 1
            if len(count) > 2:
                count[tree[i]] -= 1
                if count[tree[i]] == 0: del count[tree[i]]
                i += 1
        return j - i + 1

class Solution:
    def calcEquation(self, equations: List[List[str]], values: List[float], queries: List[List[str]]) -> List[float]:
        dc = collections.defaultdict(dict)
        for i, (a, b) in enumerate(equations):
            dc[a][b] = values[i]
            dc[b][a] = 1/values[i]
        ret = []
        for a, b in queries:
            if a in dc and b in dc: 
                stack = list(dc[a].items()) 
                seen = {a}
                found = 0
                while stack:
                    temp = []
                    for s, v in stack:
                        if s == b:
                            ret.append(v)
                            found, temp = 1, [] 
                            break
                        if s not in seen:
                            seen.add(s)
                            for k, nex_v in dc[s].items():
                                temp.append((k, nex_v*v)) 
                    stack = temp
                if found != 1:
                    ret.append(-1)
            else:
                ret.append(-1)
        return ret
                
