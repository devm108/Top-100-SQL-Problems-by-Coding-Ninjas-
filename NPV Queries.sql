select a.id,
a.year,
case when npv is null then 0 else npv end as npv
from queries a
left Join npv b on a.id=b.id and a.year=b.year
