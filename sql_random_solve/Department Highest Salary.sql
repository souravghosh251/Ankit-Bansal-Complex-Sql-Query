 
 WITH CTE AS (
        SELECT d.name as Department ,
                e.name as Employee,
                e.salary as Salary,
        RANK()
        OVER(Partition by e.departmentId
            Order by e.salary desc ) as rnk
        FROM Employee e
        LEFT JOIN Department d
        on e.departmentId=d.id
 )

 Select Department,Employee,Salary from CTE
 where rnk=1