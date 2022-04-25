Select Max(num) as num
    From (
        Select num, count(num) as total
            From MyNumbers
        Group by num) as a
Where a.total=1
