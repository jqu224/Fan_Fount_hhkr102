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
