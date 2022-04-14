Select Case When count(*)=1 then round(num,1)
        Else round(Sum(num)/2,1)
        End as median
    From 
        (Select *, Sum(frequency) over (order by num asc) as cum,
            Sum(frequency) over () as cnt 
            From Numbers) as a
Where a.cnt/2 <= a.cum and a.cnt/2 >= (a.cum-a.frequency)
