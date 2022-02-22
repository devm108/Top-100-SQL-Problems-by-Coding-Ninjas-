select dept_name,count(student_id) as student_number from department LEFT JOIN student on (student.dept_id=department.dept_id) group by dept_name order by 2 desc

