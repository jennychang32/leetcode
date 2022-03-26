Select Max(salary) 
As "SecondHighestSalary" 
From Employee
Where salary
Not In (
Select Max(salary) 
From Employee
)
