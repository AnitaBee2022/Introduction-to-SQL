use Berryl;
update employees set lastname ='Ndegwa'where employeeId =1;
update projects set projectname ='Project z'where ProjectId =1005;
delete from projects where ProjectId=1009;
ALTER table employees add Email varchar(100);
select * from employees;
alter table employees drop column Email;
select * from employees;
