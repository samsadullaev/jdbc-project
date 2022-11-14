select * from employees
where FIRST_NAME='David';


select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES
where FIRST_NAME='Peter';

select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES
where FIRST_NAME='David' and LAST_NAME='Austin';

select * from EMPLOYEES
where salary>6000;

select EMAIL from EMPLOYEES
where salary<6000;


select * from EMPLOYEES
where salary>6000 and DEPARTMENT_ID=60;

select * from EMPLOYEES
where salary >=3000 and SALARY<= 7000;

select * from EMPLOYEES
where EMPLOYEE_ID between  100 and 120;

select * from EMPLOYEES
where JOB_ID='IT_PROG' or JOB_ID='MK_MAN';

--in clauses--
--uses or logic by using IN

select * from EMPLOYEES
where JOB_ID IN('IT_PROG', 'MK_MAN');

select * from EMPLOYEES
where EMPLOYEE_ID IN(121,143,156,134);


select * from COUNTRIES
where COUNTRY_ID IN('US','IT');

select * from COUNTRIES
where COUNTRY_ID NOT IN('US', 'IT');

select* from EMPLOYEES
where DEPARTMENT_ID IS NULL ;

select * from EMPLOYEES
where MANAGER_ID is not null ;

