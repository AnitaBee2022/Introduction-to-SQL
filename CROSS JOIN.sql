use Berryl;
select employees.EmployeeId, employees.FirstName, employees.LastName,
projects.ProjectId, projects.projectname
from employees
cross join projects;
