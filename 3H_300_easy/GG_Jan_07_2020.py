
947. Most Stones Removed with Same Row or Column
https://leetcode.com/problems/most-stones-removed-with-same-row-or-column/
DFS union find
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
