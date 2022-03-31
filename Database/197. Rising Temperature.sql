Select a.id
From Weather a
Inner Join Weather b
On DATEDIFF(a.recordDate,b.recordDate)=1
Where a.temperature>b.temperature
