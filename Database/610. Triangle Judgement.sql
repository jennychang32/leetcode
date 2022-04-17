Select *,
    Case When (x+y<=z or x+z<=y or y+z<=x) Then "No"
         Else "Yes"
         End As triangle
    From Triangle
