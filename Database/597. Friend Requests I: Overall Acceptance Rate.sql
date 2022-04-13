Select Round(
    IFNULL(
        (Select count(*)
            From (Select Distinct requester_id, accepter_id
                    From RequestAccepted) as a)
        /
        (Select count(*)
            From (Select Distinct sender_id, send_to_id
                    From FriendRequest) as b)
     , 0)
, 2 ) as accept_rate
