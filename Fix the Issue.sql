select lower(trim(product_name)) as product_name,
to_char(sale_date, 'YYYY-MM') as sale_date,
count(*) as total
from Sales 
group by 1,2
order by 1,2
