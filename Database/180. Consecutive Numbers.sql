Select Distinct log1.num 
As ConsecutiveNums
From Logs log1, Logs log2, Logs log3
Where log1.id = log2.id+1
And log2.id = log3.id+1
And log1.num = log2.num
And log2.num = log3.num
