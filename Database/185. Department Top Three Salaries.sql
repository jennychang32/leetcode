Select Department, Employee, Salary
From (
    Select Department.name as Department, Employee.name as Employee,
           Employee.salary as Salary, 
           dense_rank() over (partition by departmentId
                        order by salary desc) as "Rank"
    From Employee
    Inner Join Department
    On Employee.departmentId=Department.id
) as a
Where a.Rank <=3
