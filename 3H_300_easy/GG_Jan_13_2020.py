809. Expressive Words
https://leetcode.com/problems/expressive-words/
class Solution:
    def expressiveWords(self, S: str, words: List[str]) -> int:
        def generate_cnt(word):
            prev = word[0]
            cnt = 1
            ret = []
            for c in word[1:]:
                if c == prev:
                    cnt += 1
                else:
                    ret.append((prev, cnt))
                    prev, cnt = c, 1
            else:
                ret.append((c, cnt))
                
            return ret
        
        def check_cnt(cnt_s, cnt_w):
            
            if len(cnt_s) == len(cnt_w): 
                for i in range(len(cnt_s)):
                    if cnt_s[i][0] == cnt_w[i][0] \
                        and cnt_s[i][1] >= cnt_w[i][1] \
                        and (cnt_s[i][1] == cnt_w[i][1] \
                             or cnt_s[i][1] > 2):
                        pass
                    else:
                        break
                else:
                    return True
            return False
                     
        ret_s = generate_cnt(S)
        cnt = 0 
        
        for w in words:
            ret_w = generate_cnt(w)  
            if check_cnt(ret_s, ret_w): 
                cnt += 1
                
        return cnt
    
659. Split Array into Consecutive Subsequences
https://leetcode.com/problems/split-array-into-consecutive-subsequences/
    
class Solution(object):
    def isPossible(self, nums):
        prev, prev_count = None, 0
        starts = []
        for t, grp in itertools.groupby(nums):
            count = len(list(grp))
            if prev is not None and t - prev != 1:
                for _ in range(prev_count):
                    if prev < starts.pop(0) + 2:
                        return False
                prev, prev_count = None, 0

            if prev is None or t - prev == 1:
                if count > prev_count:
                    for _ in range(count - prev_count):
                        starts.append(t)
                elif count < prev_count:
                    for _ in range(prev_count - count):
                        if t-1 < starts.pop(0) + 2:
                            return False

            prev, prev_count = t, count

        return all(nums[-1] >= x+2 for x in starts)
