636. Exclusive Time of Functions
https://leetcode.com/problems/exclusive-time-of-functions/

class Solution:
    def exclusiveTime(self, n: int, logs: List[str]) -> List[int]:
        stack = []
        res = [0] * n 
        for log in logs:
            s = log.split(':')
            task, slot = int(s[0]), int(s[2])
            
            if s[1][0] == 's':
                if stack:
                    res[stack[-1]] += slot - pre
                stack.append(task)
                pre = slot
            else:
                res[stack.pop()] += slot - pre + 1
                pre = slot + 1
            
        return res
class Solution:
    def exclusiveTime(self, n: int, logs: List[str]) -> List[int]:
        ans = [0] * n
        stk, start = [], None
        for log in logs:
            jid, kw, ts = log.split(':')
            jid, ts = int(jid), int(ts)
            if kw == 'start':
                if stk:
                    ans[stk[-1]] += (ts - start)
                stk.append(jid)
                start = ts
            else:
                ans[stk.pop()] += (ts - start + 1)
                start = ts + 1
        return ans

139. Word Break
https://leetcode.com/problems/word-break

! ~~~~~~~~~ !
Memory LIMIT EXCEDDED
! ~~~~~~~~~ !
class Solution:
    def wordBreak(self, s: str, wordDict: List[str]) -> bool:
        stack = [s]
        while stack:
            temp = []
            for each in stack:
                for word in wordDict:
                    if each[:len(word)] == word:
                        if each == word:
                            return True
                        else:
                            temp.append(each[len(word):])
            stack = copy.copy(temp)
        return False
class Solution:
	def wordBreak(self, s: str, wordDict: List[str]) -> bool:
		dp = [True] + [False] * len(s)
        
        for i in range(len(s) + 1):
			# if dp[i] is False we cannot start a new word at i
            if not dp[i]: 
				continue
            # check all words - we can repeatedly use them!
            for w in wordDict:
                # check if candidate word fits in remaining seq
                if len(w) <= len(s[i:]):
                    if w == s[i:i + len(w)]:
                        # set dp to True where next word search starts
                        dp[i + len(w)] = True
        return dp[-1]
