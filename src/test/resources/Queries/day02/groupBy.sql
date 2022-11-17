select * from employees;

--task1: display avg salary for it program

select avg(SALARY) from EMPLOYEES
where JOB_ID = 'IT_PROG';

select avg(SALARY) from EMPLOYEES
where JOB_ID = 'SA_REP';

select count(distinct JOB_ID)from EMPLOYEES;

--group them

select *from EMPLOYEES;

select JOB_ID from EMPLOYEES
    where FIRST_NAME is not null;

select JOB_ID,avg(SALARY), max(SALARY), sum(SALARY), count(*) from EMPLOYEES
group by JOB_ID;

select DEPARTMENT_ID, sum(SALARY),count(*), max(SALARY), min(SALARY), sum(SALARY) from EMPLOYEES
                                                                                  where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by max(SALARY), min(SALARY) desc ;

select  * from LOCATIONS;


select LOCATION_ID,count(*) from DEPARTMENTS
    group by LOCATION_ID
order by count(*) desc;


select REGION_ID,count(*)  from COUNTRIES
    group by REGION_ID
order by 2;

select count(*) from COUNTRIES
group by REGION_ID;

select REGION_ID from COUNTRIES;



