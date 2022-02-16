with t1 as (select product_id,(Width*Length*Height) as product_volume
           from Products),
t2 as (select name,w.product_id,units*product_volume as units_volume
      from warehouse w inner join t1 on w.product_id=t1.product_id
      )
select name as warehouse_name,sum(units_volume) as volume from t2
group by name;
