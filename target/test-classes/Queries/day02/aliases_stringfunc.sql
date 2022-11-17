select * from employees;

--will just change display name by using as
select FIRST_NAME as given_name from EMPLOYEES;

select SALARY as annual_salary from EMPLOYEES;

select first_name || ' '|| LAST_NAME as full_name from EMPLOYEES;

select EMAIL|| '@gmail.com' as full_email from EMPLOYEES;

--concat(val1 + val2)

select concat(email,'gmail.com') as email from EMPLOYEES;
