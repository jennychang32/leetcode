Select b.question_id as "survey_log"
From 

(
    Select action, question_id, count(*) as times
    From SurveyLog
    Where action <> "skip"
    Group by action, question_id
) as a

Inner Join

(
    Select action, question_id, count(*) as times
    From SurveyLog
    Where action <> "skip"
    Group by action, question_id
) as b

on a.question_id = b.question_id
Where a.action = "show" and a.action <> b.action
Order by b.times/a.times desc, b.question_id asc limit 1;
