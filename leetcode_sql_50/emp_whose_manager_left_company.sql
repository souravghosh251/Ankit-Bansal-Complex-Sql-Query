1978. Employees Whose Manager Left the Company

SELECT employee_id
from employees
where salary<30000
AND manager_id NOT IN (select employee_id from employees )
order by employee_id 