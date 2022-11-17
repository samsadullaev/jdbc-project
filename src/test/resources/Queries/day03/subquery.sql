select * from employees;




select * from EMPLOYEES
where SALARY = (select max(salary) from EMPLOYEES);

select * from EMPLOYEES
where SALARY = (SELECT MIN(SALARY) FROM EMPLOYEES);

select * from EMPLOYEES
where SALARY = (SELECT AVG(SALARY) FROM EMPLOYEES);

--find second highest salary

select * from EMPLOYEES
where salary =(select max(salary) from EMPLOYEES
                   where salary < (select max(salary) from EMPLOYEES));


--fifth

select * from EMPLOYEES --13k 5th
where salary = 13000;

select * from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES
                    WHERE salary <(select max(salary) from EMPLOYEES
                    where salary <(select max(salary) from EMPLOYEES
                                   WHERE salary <(select max(salary) from EMPLOYEES
                                                  WHERE salary <(select max(salary) from EMPLOYEES)))));

--more than avg

select min(SALARY) from EMPLOYEES;--6461


--second min salary
select FIRST_NAME,LAST_NAME from EMPLOYEES
where SALARY>(select avg(SALARY) from EMPLOYEES);

select FIRST_NAME,LAST_NAME from EMPLOYEES
where SALARY=(select min(SALARY) from EMPLOYEES
                where Salary >(select min(SALARY) from EMPLOYEES));













