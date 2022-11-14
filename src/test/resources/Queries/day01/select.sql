select * from countries;
select * from EMPLOYEES;

--not case sensitive
--single line comments

--departments

select * from DEPARTMENTS;

 select first_name from EMPLOYEES;

select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES;

select EMPLOYEES.EMPLOYEE_ID,DEPARTMENTS.DEPARTMENT_ID FROM EMPLOYEES, DEPARTMENTS;

select distinct DEPARTMENT_ID from DEPARTMENTS;

select * from LOCATIONS;

select COUNTRY_NAME,REGION_ID from COUNTRIES;

select JOB_ID, JOB_TITLE from JOBS;

select COUNTRY_NAME, REGION_NAME from COUNTRIES, REGIONS;


