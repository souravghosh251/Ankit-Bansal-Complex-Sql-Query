

create database practisedb;

use practisedb;


select * from table1
join table2 on
table1.id=table2.id

--left join
select * from table1
left join table2 on
table1.id=table2.id

--right join

select * from table1
right join table2 on
table1.id=table2.id


INSERT INTO Emp (employee_id, employee_name, department, salary, location)
VALUES 
(1, 'Alice Johnson', 'Engineering', 75000, 'New York'),
(2, 'Bob Smith', 'Data Science', 85000, 'San Francisco'),
(3, 'Carol White', 'Human Resources', 65000, 'Chicago'),
(4, 'David Brown', 'Engineering', 78000, 'Austin'),
(5, 'Eva Green', 'Marketing', 70000, 'Seattle'),
(6, 'Frank Martin', 'Data Science', 82000, 'New York'),
(7, 'Grace Lee', 'Finance', 90000, 'Los Angeles'),
(8, 'Harry Clark', 'Sales', 72000, 'Chicago'),
(9, 'Ivy Baker', 'Human Resources', 67000, 'Austin'),
(10, 'Jack Wilson', 'Marketing', 71000, 'San Francisco'),
(11, 'Karen Evans', 'Engineering', 76000, 'Seattle'),
(12, 'Leo Adams', 'Data Science', 84000, 'New York'),
(13, 'Mona Scott', 'Finance', 88000, 'Los Angeles'),
(14, 'Nate Perry', 'Sales', 74000, 'Chicago'),
(15, 'Olivia Cooper', 'Engineering', 78000, 'Austin');


select * from emp

---query2 write a query to create a new table with the same schema as the employee table


SELECT * INTO table3 FROM emp WHERE 1=2;


---query3 write a query to create a new table same like emp with data and schema

select * into table4 from emp where 1=1

select * from table4


-- query4 write a query where employee name starts with letter A

select * from emp where employee_name LIKE 'A%'


-- query 5 write a query where department id starts with the same number and ends with same number

 ALTER TABLE emp
ADD dept_id INT CHECK (dept_id >= 101 AND dept_id <= 999);

UPDATE emp
SET dept_id = 101
WHERE dept_id IS NULL;

select * from emp
select * from emp where left(dept_id::text,1)=right(dept_id::text,1)

-- get records in xml

SELECT query_to_xml('SELECT * FROM emp', true, false, '');

select * from emp


-- get current date

SELECT CURRENT_DATE();
-- get currenttimestamp

SELECT CURRENT_TIMESTAMP;

-- get current year

SELECT EXTRACT(YEAR FROM CURRENT_DATE)