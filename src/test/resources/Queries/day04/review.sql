select * from employees;


--get 3rd highest  salary
select distinct salary from EMPLOYEES order by SALARY desc;

select min(SALARY) from ( select distinct salary from EMPLOYEES order by SALARY desc)

where rownum<4;
--this gets the info of the person with 3rd high salary
select * from EMPLOYEES
    where salary =(select min(SALARY) from ( select distinct salary from EMPLOYEES order by SALARY desc)
    where rownum<4);

--my practice
select * from EMPLOYEES
where salary = (select max(salary) from ( select salary from EMPLOYEES order by salary )
                                   where rownum<10);

--find 3rd min salary

select distinct (salary) from EMPLOYEES order by salary;

select * from (select distinct salary from EMPLOYEES order by SALARY)
where rownum<4;

select * from EMPLOYEES
where salary = (select max(salary)from (select distinct salary from EMPLOYEES order by SALARY)
where rownum<4);

