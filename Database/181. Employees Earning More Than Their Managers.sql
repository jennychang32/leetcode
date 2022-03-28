Select a.name As Employee
From Employee a, Employee b
Where a.managerId=b.id
And a.salary > b.salary
