Select name
    From Candidate
Inner Join Vote
On Vote.candidateId=Candidate.id
Group by Candidate.id
Order by count(*) desc limit 1
