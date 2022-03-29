Select 
score, 
Dense_Rank() Over (
    Order by score Desc
)
As "rank"
From Scores
Order by score Desc
