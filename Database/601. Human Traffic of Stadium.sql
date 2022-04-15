Select Distinct a.id, a.visit_date, a.people
    From Stadium as a
Inner Join Stadium as b
Inner Join Stadium as c
On (a.id+1=b.id and b.id+1=c.id) or (a.id=b.id+1 and a.id+1=c.id) or (b.id+1=c.id and c.id+1=a.id)
Where a.people>=100 and b.people>=100 and c.people>=100 and a.id<>b.id and b.id<>c.id and a.id<>c.id
Order by a.visit_date
