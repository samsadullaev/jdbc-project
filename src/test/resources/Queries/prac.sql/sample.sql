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

--IQ task

select * from employees
where FIRST_NAME  like 'J%'
order by first_name desc;

select  FIRST_NAME, SALARY from EMPLOYEES;


--tasks
-- 1. FIND OUT COUNTRY NAME AND REGION NAME FROM COUNTRIES AND REGION
select COUNTRY_NAME, region_name from COUNTRIES c  inner join REGIONS r
on c.REGION_ID= r.REGION_ID;


-- 2. FIND OUT FIRST_NAME AND JOB_TITLE FROM JOBS AND EMPLOYEES TABLE

select FIRST_NAME,JOB_TITLE from JOBS j inner join EMPLOYEES e
on j.job_id=e.job_id;


-- 3. FIND OUT DEPARTMENT_NAME AND CITY

select DEPARTMENT_name, CITY from DEPARTMENTS inner join LOCATIONS
on LOCATIONS.LOCATION_ID= DEPARTMENTS.LOCATION_ID;


-- 4. FIND OUT ALL CITIES  AND COUNTRY NAMES

select CITY, COUNTRY_NAME from LOCATIONS l inner join COUNTRIES c
on c.COUNTRY_ID=l.COUNTRY_ID;
-- 5. FIND OUT FIRST_NAME, LAST NAME, DEPARTMENT ID , DEPARTMENT NAME  FOR
--DEPARTMENT ID 80 OR 40

select FIRST_NAME,LAST_NAME, DEPARTMENT_ID, DEPARTMENT_NAME from EMPLOyees e inner join DEPARTMENTS d
  on e.DEPARTMENT_ID=d.DEPARTMENT_ID



-- 6. FIND OUT CITY , COUNTRY_NAME OF THAT CITY , REGION_NAME OF THAT CITY
-- 7. FIND OUT EMPLOYEES FIRST_NAME , JOB_TITLE , DEPARTMENT_NAME , CITY
-- 8. FIND OUT EMPLOYEES FIRST_NAME , JOB_TITLE , DEPARTMENT_NAME , CITY ,
--COUNTRY_NAME , REGION_NAME
--9. FIND OUR  EMPLOYEES FIRST_NAME, LAST NAME, DEPARTMENT ID AND ALL
--DEPARTMENTS
--  INCLUDING  WHERE DO NOT HAVE ANY EMPLOYEE.
--10. FIND OUT ALL DEPARTMENT_NAME  , LOCATION_ID , AND COUNTRY_ID
-- INCLUDING THOSE LOCATIONS  WITH NO DEPARTMENT
--11.FIND OUT DEPARTMENT_NAME , LOCATION_ID , AND COUNTRY_NAME
-- INCLUDING THOSE COUNTRIES WITH NO DEPARTMENT
--12. FIND OUT EMPLOYEES FIRST_NAME, DEPARTMENT ID AND DEPARTMENT NAME
-- INCLUDING THOSE DOES NOT HAVE DEPARTMENT
-- INCLUDING THOSE DEPARTMENTS  DOES NOT HAVE ANY MATCHING EMPLOYEES











