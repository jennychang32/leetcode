Select dept_name, count(student_id) as student_number
    From Student
Right Join Department
On Student.dept_id=Department.dept_id
Group by dept_name
Order by count(student_id) desc, dept_name asc
