/* Having VS Where */

select * from employees
where salary > 50000

/* Having */
select ROUND(AVG(salary),2) as avg_sal, department from employees 
group by department
having ROUND(AVG(salary),2) > 50000