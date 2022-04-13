class Solution:
    def isPalindrome(self, x: int) -> bool:

        if x<0 or (x%10==0 and x!=0):
            return False
        
        elif x==0:
            return True
        
        else:
            
            bound=0
            while (x>bound):
                bound = bound * 10 + x%10
                x //= 10
            
            if x==bound or x==bound//10:
                return True
            else:
                return False
