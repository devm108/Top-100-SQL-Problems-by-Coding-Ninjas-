select Name from Employee where ManagerId is null 
group by Name
having count(Distinct Id)>=5
