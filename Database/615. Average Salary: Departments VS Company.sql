Select pay_month, department_id,
        (Case When average>total_avg Then "higher"
        When average<total_avg Then "lower"
        Else "same" End) as comparison
        From (
            
            (Select DATE_FORMAT(Salary.pay_date,'%Y-%m') as pay_month, AVG(amount) as total_avg
                From Salary
            Inner Join Employee
            On Salary.employee_id=Employee.employee_id
            Group by pay_month) as a

            Inner Join

            (Select DATE_FORMAT(Salary.pay_date,'%Y-%m') as pay_month1, Employee.department_id, AVG(amount) as average
                From Salary
            Inner Join Employee
            On Salary.employee_id=Employee.employee_id
            Group by pay_month1, Employee.department_id) as b)

Where pay_month1=pay_month
