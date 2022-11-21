select * from employees;


--get neena manager
select MANAGER_ID from EMPLOYEES
where FIRST_NAME='Neena';

select FIRST_NAME from EMPLOYEES
where EMPLOYEE_ID=(select MANAGER_ID from EMPLOYEES
                   where FIRST_NAME='Neena');

select workers.FIRST_NAME,workers.LAST_NAME,managers.FIRST_NAME,managers.LAST_NAME
from EMPLOYEES workers  inner join EMPLOYEES Managers
on workers.MANAGER_ID=managers.EMPLOYEE_ID;

--get steven
select workers.FIRST_NAME,workers.LAST_NAME,managers.FIRST_NAME,managers.LAST_NAME
from EMPLOYEES workers  left join EMPLOYEES Managers
         on workers.MANAGER_ID=managers.EMPLOYEE_ID
where workers.MANAGER_ID is null;



