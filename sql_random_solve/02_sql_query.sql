-- Pivoting and Non Pivoting
CREATE TABLE emp_compensation_pivot AS
	select emp_id , 
	sum(CASE WHEN salary_component_type='salary' then val end) as salary,
	sum(CASE WHEN salary_component_type='bonus' then val end) as bonus,
	sum(CASE WHEN salary_component_type='hike_percent' then val end) as hike_percent
from emp_compensation
group by emp_id

select * from emp_compensation_pivot

select emp_id , 'salary' as salary_component_type ,salary as val from emp_compensation_pivot
union all
select emp_id , 'hike_percent' as hike_percent ,hike_percent as val from emp_compensation_pivot
union all
select emp_id , 'bonus' as bonus ,bonus as val from emp_compensation_pivot

