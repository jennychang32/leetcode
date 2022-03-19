class Solution:
    def myAtoi(self, s: str) -> int:
        
            
        tmp = s.strip()
        
        if len(tmp) == 0:
            return(0)
        
        tmp = tmp.split()[0]
        
        for i in range(0,len(tmp)):
            if (tmp[i] == "+" or  tmp[i] == "-") and i==0:
                continue
            if tmp[i].isnumeric() == False:
                tmp=tmp[0:i]
                break
        
        try:        
            tmp = int(tmp)
            if tmp > (2**31)-1:
                tmp = 2**31-1

            elif tmp < -2**31:
                tmp = -2**31
                    
            
            return(tmp)
        
        except: 
            return(0)
