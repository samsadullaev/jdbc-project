select * from employees;


select substr(FIRST_NAME,1,1)||'.'||substr(LAST_NAME,1,1)  from EMPLOYEES;



create view EmployeesInfo as
select substr(FIRST_NAME,1,1)||'.'||substr(LAST_NAME,1,1) as initals, FIRST_NAME || '  makes' || ' '||   SALARY as Employees_Salary from EMPLOYEES;

select Employees_Salary from EmployeesInfo;

create view Email as
    select EMAIL|| '@gmail.com' as full_email from EMPLOYEES;

select * from Email;

drop view Email;

drop view EmployeesInfo;


