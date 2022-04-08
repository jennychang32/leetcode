Select request_at as Day,
       round(count(case when status like 'cancelled%' then 1 end)/count(*),2) as 'Cancellation Rate' 
       
    From Trips
    Inner Join (Select * From Users Where role='client') b1
    On b1.users_id = Trips.client_id  and b1.banned <> 'Yes'
    Inner Join  (Select * From Users Where role='driver') b2
    on b2.users_id = Trips.driver_id  and b2.banned <> 'Yes'

Where request_at >= "2013-10-01" And request_at <= "2013-10-03"
Group by request_at
