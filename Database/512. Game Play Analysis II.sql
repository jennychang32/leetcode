Select a.player_id, a.device_id
From (
    Select player_id, device_id, event_date,
    rank() over (partition by player_id order by event_date asc) as ranks
    From Activity
) as a
Where a.ranks=1
