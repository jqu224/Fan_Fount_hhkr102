
947. Most Stones Removed with Same Row or Column
https://leetcode.com/problems/most-stones-removed-with-same-row-or-column/
DFS union find
in the best case scenario, only one will be left for a connectted graph 

class Solution:
    def removeStones(self, stones: List[List[int]]) -> int:
        visited, num_left, on_row, on_col = set(), 0, collections.defaultdict(list), collections.defaultdict(list)
        stones = list(map(tuple, stones))
        for l, r in stones:
            on_row[l].append((l, r))
            on_col[r].append((l, r))
        for stone in stones:
            if stone not in visited:
                stack = [stone]
                visited.add(stone)
                while stack:
                    row, col = stack.pop()
                    for coor in on_row[row]:
                        if coor not in visited:
                            visited.add(coor)
                            stack.append(coor)
                    for coor in on_col[col]:
                        if coor not in visited:
                            visited.add(coor)
                            stack.append(coor)
                num_left += 1
        return len(stones) - num_left

class Solution(object):
    def removeStones(self, stones):
        graph = collections.defaultdict(list)
        for i, x in enumerate(stones):
            for j in range(i):
                y = stones[j]
                if x[0]==y[0] or x[1]==y[1]:
                    graph[i].append(j)
                    graph[j].append(i)

        N = len(stones)
        ans = 0

        seen = [False] * N
        for i in range(N):
            if not seen[i]:
                stack = [i]
                seen[i] = True
                while stack:
                    ans += 1
                    node = stack.pop()
                    for nei in graph[node]:
                        if not seen[nei]:
                            stack.append(nei)
                            seen[nei] = True
                ans -= 1
        return ans
    
939. Minimum Area Rectangle
class Solution:
    def minAreaRect(self, points: List[List[int]]) -> int:
        # bfs
        min_ = float("inf")
        seen = set()
        l_dict = collections.defaultdict(list)
        r_dict = collections.defaultdict(list)
        for l, r in points:
            l_dict[l].append(r)
            r_dict[r].append(l) 
            
        l_line = collections.defaultdict(list)
        
        for l, list_r in l_dict.items():
            list_r = sorted(list_r)
            for i, r in enumerate(list_r):
                for j in range(i):
                    l_line[(list_r[j], r)].append(l) 
                    
        for (low, hi), v in l_line.items():
            hight = hi - low
            if hight < min_:
                list_x = sorted(v)
                for i in range(len(list_x)-1):
                    wid = list_x[i+1] - list_x[i]
                    if wid < min_:
                        min_ = min(min_, wid*hight)
                        
        return min_ if min_ != float("inf") else 0
            import collections
        
class Solution:
    def minAreaRect(self, points):
        n = len(points)
        nx = len(set(x for x, y in points))
        ny = len(set(y for x, y in points))
        if nx == n or ny == n:
            return 0

        p = collections.defaultdict(list)
        if nx > ny:
            for x, y in points:
                p[x].append(y)
        else:
            for x, y in points:
                p[y].append(x)
 
        lastx = {}
        res = float('inf')
        for x in sorted(p):
            p[x].sort()
            for i in range(len(p[x])):
                for j in range(i):
                    y1, y2 = p[x][j], p[x][i]
                    if (y1, y2) in lastx:
                        res = min(res, (x - lastx[y1, y2]) * (y2 - y1))
                    lastx[y1, y2] = x
        return res if res < float('inf') else 0
            
