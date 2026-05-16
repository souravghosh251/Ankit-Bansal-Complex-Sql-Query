SELECT 
    emp_id,
    SUM(CASE 
            WHEN salary_component_type = 'salary' 
            THEN val 
        END) AS salary,

    SUM(CASE 
            WHEN salary_component_type = 'hike_percent' 
            THEN val 
        END) AS hike_percent,

    SUM(CASE 
            WHEN salary_component_type = 'bonus' 
            THEN val 
        END) AS bonus

INTO emp_compensation_pivot

FROM employee_salary_components

GROUP BY emp_id;



select emp_id,'salary' as salary_component_type , salary as val from emp_compensation_pivot
union all
select emp_id,'bonus' as salary_component_type , bonus as val from emp_compensation_pivot
union all
select emp_id,'hike_percent' as salary_component_type , hike_percent as val from emp_compensation_pivot
