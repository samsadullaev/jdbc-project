select * from employees;

select * from EMPLOYEES
where rownum<11;

--display info from employees getting 5 high salary


--wrong
select * from EMPLOYEES
where rownum<5
order by SALARY desc;

select * from (select  * from EMPLOYEES order by SALARY desc)
where rownum<=6;

select * from ( select distinct SALARY from EMPLOYEES order by SALARY desc)

where rownum <=5
order by salary;

select min(SALARY) from (select distinct salary from EMPLOYEES order by salary desc)
where rownum<6;

--correct 5th highest salary

select * from EMPLOYEES
where salary = (select min(SALARY) from (select distinct salary from EMPLOYEES order by salary desc)
where rownum<6);

select * from EMPLOYEES
   where salary = (select min(salary) from (select distinct salary from EMPLOYEES order by SALARY desc)
where rownum<5);

select * from EMPLOYEES
where salary = (select min(SALARY) from (select distinct salary from EMPLOYEES order by salary desc)
                where rownum<50);


--3rd lowest salary

select * from EMPLOYEES
                  where salary = (select min(SALARY) from EMPLOYEES);


select * from EMPLOYEES
where salary = (select max(salary) from (select distinct salary from EMPLOYEES order by salary)
where rownum<200);
