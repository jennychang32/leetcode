Select name, bonus From Employee
Left Join
Bonus
On Employee.empId=Bonus.empId
Where bonus < 1000 or bonus is NULL;
