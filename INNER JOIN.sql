use Berryl;
 select employees.firstname, employees.LastName, department.DepartmentName
 from employees
 inner join department on employees.DepartmentID =department.DepartmentId;
