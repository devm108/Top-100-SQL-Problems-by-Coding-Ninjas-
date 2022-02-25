with tab as (select *, dense_rank() over (order by salary desc) as rnk
             from employee) 
select salary as "SecondHighestSalary" from tab where rnk=2
