select * from employees;

--% for matching sequence of chars
-- _ for matching any single char

select * from EMPLOYEES
where FIRST_NAME like  'J%';

select * from DEPARTMENTS
where DEPARTMENT_ID like '1__';

select * from EMPLOYEES
where FIRST_NAME like '__z__';

select * from EMPLOYEES
where FIRST_NAME like '%e';

select * from EMPLOYEES
where FIRST_NAME like'_a%';

select * from EMPLOYEES
where JOB_ID like 'IT%';

select * from EMPLOYEES
where FIRST_NAME like 'H%l';
