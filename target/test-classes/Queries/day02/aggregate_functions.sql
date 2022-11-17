select * from employees;

--count - count rows
--max - max value
--min- min value
-- sum- total value
--avg-average values
--aggregate functions will return one result


select count(*) from departments;

select count(*) from LOCATIONS;

--null values

select count (*) from EMPLOYEES
where DEPARTMENT_ID is null;

select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is null;

select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is not null;

select count( distinct FIRST_NAME) from EMPLOYEES;

select count(*) from EMPLOYEES
where JOB_ID IN('IT_PROG', 'SA_REP');

select count(distinct EMPLOYEE_ID) from EMPLOYEES
where SALARY>6000;


--max

select salary from EMPLOYEES;
select max(salary) from EMPLOYEES;

--min

select salary from EMPLOYEES;
select min(salary) from EMPLOYEES;

--avg
select salary from EMPLOYEES;
select avg(salary) from EMPLOYEES;


select round(avg(salary)) from EMPLOYEES;
select round(avg(salary),3) from EMPLOYEES;

--sum
select sum(salary) from EMPLOYEES;



