--select a.Name from Employee a,Employee b
--where a.Salary>b.salary and a.ManagerId=b.Id

select a.Name
from Employee a inner join Employee b on a.ManagerId = b.Id
where a.Salary > b.Salary
