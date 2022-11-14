select * from employees;

--order by
--allows us to sort data based on provided column
--default ascending order


select * from EMPLOYEES
order by SALARY;

select * from EMPLOYEES
order by 8 desc;


select * from EMPLOYEES
order by FIRST_NAME asc  LAST_NAME desc;

select * from EMPLOYEES
where EMPLOYEE_ID < 120 order by SALARY desc ;

select * from EMPLOYEES
order by FIRST_NAME;