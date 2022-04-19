Select followee as follower, count(follower) as num
    From Follow
Where followee in (Select follower From Follow)
Group by followee
Order by followee asc
