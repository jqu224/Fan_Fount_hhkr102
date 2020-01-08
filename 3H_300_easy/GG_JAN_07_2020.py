
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
