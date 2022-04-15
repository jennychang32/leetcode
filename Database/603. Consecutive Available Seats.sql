Select Distinct a.seat_id
    From Cinema as a
Inner Join Cinema as b
On abs(a.seat_id-b.seat_id)=1
Where a.free=1 and b.free=1
Order by a.seat_id asc
