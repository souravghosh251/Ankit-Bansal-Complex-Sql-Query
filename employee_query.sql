use amazon_orders
Select distinct * from employee

select * from employee

with cte as (
select *, row_number() over(partition by employee_id order by employee_id) as rn
from employee
)

select * from cte where rn=2

select * from employee

select * from employee order by salary limit 3 


-- Second Highest Salary

with cte as (select *, row_number() over(order by salary desc)rn
from employee)

select * from cte
where rn=2

-- second lowest earning employee


with cte as (select *, row_number() over(order by salary asc)rn
from employee)

select * from cte
where rn=2

-- find the bottom 2 salary from each department

with cte as (select *, row_number() over(partition by department_id order by salary asc)rn
from employee)

select * from cte where rn in (1,2)