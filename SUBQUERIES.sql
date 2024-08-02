use berryl;
-- disable safe update mode for the current session
set sql_safe_updates = 0;
-- Update the salary column with random values
update employees
set Salary = round(rand()*(80000-40000)+40000,2);
-- back to safe mode
set sql_safe_updates = 1;
select * from berryl.employees;

select departmentname,
-- subquery that count number of employees per department and store it in employeecout
(select count(*)
from employees
where employees.departmentId = department.departmentId) as EmployeeCount
from department;

select *
from employees
-- returns employees with maximum salary per department
where Salary = (select max(Salary)
from employees as e
where e.DepartmentID = employees.DepartmentID);

select departmentId, AverageSalary
from(select departmentId, avg(Salary) as AverageSalary
from employees
group by departmentId) as AvgSalaries
where AverageSalary > 50000;