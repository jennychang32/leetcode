Select Department.name as "Department", Employee.name as "Employee", Salary
From Employee
Inner Join Department
On Employee.departmentId=Department.id 
Where (
    Employee.departmentId, Salary
)
In (
    Select departmentId, Max(Salary)
    From Employee
    Group By departmentId
)
