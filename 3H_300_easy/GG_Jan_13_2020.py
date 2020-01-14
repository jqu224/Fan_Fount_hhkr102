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
