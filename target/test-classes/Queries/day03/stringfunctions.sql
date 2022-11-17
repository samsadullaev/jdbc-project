select * from employees;

--upper(varchar)-all higher
select UPPER( FIRST_NAME ) from EMPLOYEES;

--lower(varchar)- all lower
select lower(FIRST_NAME) from EMPLOYEES;


--initcap makes first letter big
select initcap(EMAIL) from EMPLOYEES;

--length()-gets full length

select email, length(EMAIL||'@gmail.com') from EMPLOYEES;

select FIRST_NAME, length(FIRST_NAME) from EMPLOYEES
where length(FIRST_NAME)=6
order by FIRST_NAME;

--substr

select substr(FIRST_NAME,3,3)||'.'||substr(LAST_NAME,1,1)  from EMPLOYEES;

select reverse(FIRST_NAME) from EMPLOYEES;


select substr(FIRST_NAME,-1,3)||'.'|| substr(LAST_NAME,-1,3) from EMPLOYEES;






