
-----------------------------------
Best time to buy and sell stock:
https://leetcode.com/problems/best-time-to-buy-and-sell-stock/submissions/
class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        max_profit, cur_min = 0, float('inf')
        for price in prices:
            cur_min = min(price, cur_min)
            max_profit = max(price - cur_min, max_profit)
        return max_profit
-----------------------------------
