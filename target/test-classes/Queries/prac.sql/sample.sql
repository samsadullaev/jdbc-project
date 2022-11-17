       select * from employees;

select  FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES;

select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES
where salary<6000;

select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES
where SALARY between 6000 and 7000;

select REGION_ID from COUNTRIES;

select salary from EMPLOYEES
where LAST_NAME='Grant' and FIRST_NAME='Douglas';

select DEPARTMENT_NAME from DEPARTMENTS;

select salary from EMPLOYEES
where salary>23000.00;

select DEPARTMENT_NAME from DEPARTMENTS;

select * from JOB_HISTORY
order by START_DATE;

       select * from JOB_HISTORY
       order by START_DATE desc;

select * from EMPLOYEES
where LAST_NAme like '_a%a';

select * from EMPLOYEES
where LAST_NAME like 'A%';

select * from JOBS
where JOB_ID like 'IT%';

SELECT * FROM EMPLOYEES
WHERE FIRST_NAME like 'A___';

select * from DEPARTMENTS
where DEPARTMENT_ID IN(50,80,100);

select * from DEPARTMENTS
       where DEPARTMENT_ID  not IN(90, 60,  100, 130, 120);








