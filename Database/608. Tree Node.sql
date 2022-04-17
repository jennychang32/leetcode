Select id,
    Case When p_id is null Then "Root"
         When id In (Select Distinct p_id From Tree as a Where p_id is not Null) and p_id is not Null Then "Inner"
         Else "Leaf"
         End As type
    From Tree
Order by id
