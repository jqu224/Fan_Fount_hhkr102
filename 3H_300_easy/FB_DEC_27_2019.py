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
