Select round(count(*)/total,2) as Fraction From
    (Select player_id, Min(event_date) as min_date,
        (Select count(distinct player_id) From Activity) as total
    From Activity
    Group by player_id) as a
    Inner Join Activity as b
    On a.player_id=b.player_id
    Where b.event_date=a.min_date+1
