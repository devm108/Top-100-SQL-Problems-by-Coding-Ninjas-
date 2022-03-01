Select distinct NameCust as "Customers" from Customers a,Orders b
where a.Id not in (Select a.Id from Customers a,Orders b where a.Id=b.CustomerId)
order by 1 asc
