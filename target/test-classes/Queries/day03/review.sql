select * from COUNTRIES;

--task1 how many emplooyees working for each manager

select MANAGER_ID, count(*) as employees from EMPLOYEES
where manager_id is not null
group by MANAGER_ID
having count(*)>6
order by employees desc;


--locations for each country
select COUNTRY_ID,count(*) from LOCATIONS
where COUNTRY_ID IN('US','CA')
group by COUNTRY_ID
having count(*)>2

order by COUNTRY_ID desc;

--display all employees salary
--ex: steve makes 24000

select FIRST_NAME || '  makes' || ' '||   SALARY as Employees_Salary from EMPLOYEES;

select concat(concat(FIRST_NAME,'makes'),SALARY) as Employees_Salary from EMPLOYEES;






