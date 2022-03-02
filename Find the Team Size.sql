select 
f.employee_id,
count(i.employee_id) as team_size
from Employee f inner join Employee i on f.team_id=i.team_id
group by f.employee_id
order by f.employee_id
