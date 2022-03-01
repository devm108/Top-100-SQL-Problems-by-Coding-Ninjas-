select max(num) as num from (select num,count(num) as cnt from my_numbers group by num) t where cnt=1

