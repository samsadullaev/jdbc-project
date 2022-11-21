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


--left outer with where

--get me unique part from left table

select CUSTOMER_ID,FIRST_NAME,LAST_NAME,ADDRESS,PHONE from customer left outer join ADDRESS
    on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID where ADDRESS.ADDRESS_ID is null;

--mehmet task
--select all name and department name
select * from DEPARTMENTS;


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
select CITY,COUNTRY_NAME from LOCations L inner join COUNTRIES c
on l.COUNTRY_ID=c.COUNTRY_ID;

--Display All cities and related country names  including with countries without city
select city,COUNTRY_NAME from LOCATIONS l  right join COUNTRIES c
on l.COUNTRY_ID=c.COUNTRY_id;



--display all department name and street address
select DEPARTMENT_NAME,STREET_ADDRESS from DEPARTMENTS d inner join LOCATIONS l
    on d.LOCATION_ID = l.LOCATION_ID;


--8.Display first_name,last_name and department_name,city for all employees
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY from EMPLOYEES e inner join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_id
inner join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID;


--display employee departments in each city
select CITY, count(*)from EMPLOYEES e inner join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_id
  inner join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID
group by  CITY;

--Display first_name,last_name and department_name,city, country name for all employees
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY,country_name from EMPLOYEES e
    inner join DEPARTMENTS d
        on e.DEPARTMENT_ID = d.DEPARTMENT_id
            inner join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID
inner join COUNTRIES c
on l.COUNTRY_ID = c.COUNTRY_ID;


--employees departments we have in country name
select country_name, count(*) from EMPLOYEES e inner join DEPARTMENTS d
         on e.DEPARTMENT_ID = d.DEPARTMENT_id
          inner join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID
            inner join COUNTRIES c
                 on l.COUNTRY_ID = c.COUNTRY_ID
group by country_name
having count(*)>20
order by 2;


















