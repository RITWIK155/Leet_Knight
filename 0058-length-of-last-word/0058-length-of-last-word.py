class Solution(object):
    def lengthOfLastWord(self, s):
        s2 = s.split()
        s3 = s2.pop()
        return len(s3)

        