Select abs(a.x-b.x) as shortest
    From Point as a
Join Point as b
Where abs(a.x-b.x) <>0
Order by abs(a.x-b.x) asc limit 1
