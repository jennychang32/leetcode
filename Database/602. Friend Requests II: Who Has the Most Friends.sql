Select id, sum(num) as num From
(Select requester_id as id, count(*) as num
    From RequestAccepted
Group by requester_id

Union All

Select accepter_id as id, count(*) as num
    From RequestAccepted
Group by accepter_id) as a

Group by id
Order by sum(num) desc limit 1
