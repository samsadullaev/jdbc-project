select * from employees;




-- Task 1:display any job title information endswith manager from jobs table
-- Task 4:display all Countries where Region_ID is 1 and Country_Name is not Belgium
-- Task 2:display all employees except firstname is starting with D
-- Task 3:display all employees except firstname is starting with D and has 5 letter

select * from JOBS
where JOB_TITLE like '%Manager';

select * from COUNTRIES
where REGION_ID =1 and COUNTRY_NAME !='Belgium';

select * from COUNTRIES
where REGION_ID =1 and COUNTRY_NAME <>'Belgium';

select * from COUNTRIES
where REGION_ID =1 and COUNTRY_NAME not in 'Belgium';

select * from EMPLOYEES
where FIRST_NAME not like 'D%'
order by FIRST_NAME desc;

select * from EMPLOYEES
where FIRST_NAME not like 'D____'
order by FIRST_NAME;




