use Berryl;
select departmentId, count(*) as EmployeeCount   #selecting data employees table gruping by department id storing the count in employeecount
from employees
group by DepartmentID;
