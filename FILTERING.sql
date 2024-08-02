use berryl;
select sum(Salary) as TotalSalary
from Data2;

select avg(Salary) as AVGSalary
from Data2;
-- Find the latest hire date for each department
select departmentId, max(HireDate) as LatestHireDate
from employees
group by departmentId;
-- filtering from the imported table(data2)
select * from data2#selecting all columns frm data2 table
where salary> 50000;
-- select the departmentId and the count of employees for each department
select departmentId, count(*) as employeecount
from employees
group by departmentId
-- filtering aggregated data
having count(*)>=2;

select * from data2
where department = 'HR' and salary >=50000;

select * from data2
where department = 'HR' or salary >=70000;
-- negation
select * from data2
where not  department = 'HR';
-- instead of using a lot of or use in
select * from employees
where   departmentId in (101, 102, 103);

select * from data2
where salary between 50000 and 70000;
-- name begin with J
select * from data2
where name like 'J%';
-- name ends with e
select * from data2
where name like '%e';
-- name that has d in it
select * from data2
where name like '%d%';