select * from employees;

select * from ADDRESS;
select * from CUSTOMER;


--combining the table without null ID's and giving name A and C
select FIRST_NAME,LAST_NAME,C.ADDRESS_ID,A.ADDRESS_ID,ADDRESS,PHONE from ADDRESS A inner join CUSTOMER C
on A.ADDRESS_ID = C.ADDRESS_ID;


--left outer join

--run all names
select FIRST_NAME,LAST_NAME,ADDRESS,PHONE from customer C left outer join ADDRESS A
on c.ADDRESS_ID=a.ADDRESS_ID;

--run all address
select FIRST_NAME,LAST_NAME,ADDRESS,PHONE from ADDRESS  A left outer join  CUSTOMER C
    on a.ADDRESS_ID=c.ADDRESS_ID;



--right outer join

--will not run the name but run all address
select FIRST_NAME,LAST_NAME,ADDRESS,PHONE from customer C right outer join ADDRESS A
on c.ADDRESS_ID=a.ADDRESS_ID;


--will run all the names
select FIRST_NAME,LAST_NAME,ADDRESS,PHONE from address a  right outer join customer c
  on c.ADDRESS_ID=a.ADDRESS_ID;

--mehmet task
--select all name and department name
select * from DEPARTMENTS;

select FIRST_NAME,DEPARTMENT_NAME from EMPLOYEES, DEPARTMENTS;

select FIRST_NAME,DEPARTMENT_NAME from EMPLOYEES e inner join DEPARTMENTS d
on e.DEPARTMENT_id=d.DEPARTMENT_ID
order by FIRST_NAME;

--select all name and department including department without employee


select FIRST_NAME,DEPARTMENT_NAME from DEPARTMENTS d left join EMPLOYEES e
on e.DEPARTMENT_ID=d.DEPARTMENT_ID;

select DEPARTMENT_NAME, count(*)from DEPARTMENTS d left join EMPLOYEES e
    on e.DEPARTMENT_ID=d.DEPARTMENT_ID
group by DEPARTMENT_NAME;




--select all name and department including employee without department
select FIRST_NAME,DEPARTMENT_NAME from EMPLOYEES e left join DEPARTMENTS d
     on e.DEPARTMENT_ID=d.DEPARTMENT_ID;

--select all department without employee ad employee without department

select FIRST_NAME,DEPARTMENT_NAME from EMPLOYEES e full outer join DEPARTMENTS d
on e.DEPARTMENT_ID=d.DEPARTMENT_id;

--display all cities and related country names
select CITY,COUNTRY_NAME from LOCations l left join COUNTRIES c
on l.CITY=c.COUNTRY_NAME;

--Display All cities and related country names  including with countries without city
select city,COUNTRY_NAME from LOCATIONS l  right join COUNTRIES c
on l.CITY=c.COUNTRY_NAME;

--display all department name and street address
select DEPARTMENT_NAME,STREET_ADDRESS from DEPARTMENTS,LOCATIONS;

--8.Display first_name,last_name and department_name,city for all employees
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY from EMPLOYEES,DEPARTMENTS,LOCATIONS;










