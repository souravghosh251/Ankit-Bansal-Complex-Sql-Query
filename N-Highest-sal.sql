CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
     with cte as (
        SELECT *, DENSE_RANK() OVER(order by salary desc) as rnk from employee)
    
        SELECT DISTINCT IFNULL(SALARY,null) from cte
        where rnk=N
  
  );

END