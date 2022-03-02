select a.name,
coalesce(sum(b.distance),0) as travelled_distance
from Users a left join Rides b on a.id=b.user_id
group by a.name 
order by 2 desc, 1 asc
