class Solution:
    def romanToInt(self, s: str) -> int:
        dict1 = {"I":1,
                 "V":5,
                 "X":10,
                 "L":50,
                 "C":100,
                 "D":500,
                 "M":1000
        }
        res = 0
        i=0
        
        while(i<len(s)):
            
            if (s[i]=="I" and i!=len(s)-1):
                if(s[i+1]== "V"):
                    res+=4
                    i+=1
                elif(s[i+1]== "X"):
                    res+=9
                    i+=1
                else:
                    res += dict1[s[i]]
            elif(s[i]=="X" and i!=len(s)-1):
                if(s[i+1]=="L" and i!=len(s)-1):
                    res+=40
                    i+=1
                elif(s[i+1]=="C" and i!=len(s)-1):
                    res+=90
                    i+=1
                else:
                    res += dict1[s[i]]
            elif(s[i]=="C" and i!=len(s)-1):
                if(s[i+1]=="D" and i!=len(s)-1):
                    res+=400
                    i+=1
                elif(s[i+1]=="M" and i!=len(s)-1):
                    res+=900
                    i+=1
                else:
                    res += dict1[s[i]]

            else:
                 res += dict1[s[i]]
            i+=1

        return res
