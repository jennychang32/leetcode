Select a.player_id, a.event_date, a.cumsum as games_played_so_far
From (
    Select *, 
    Sum(games_played) over (partition by player_id order by event_date) as cumsum
    From Activity) as a
