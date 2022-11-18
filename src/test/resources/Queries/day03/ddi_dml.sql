select * from employees;


create table scrumteam(

    empid Integer PRIMARY KEY,
    firstname varchar(30) not null,
    jobtitle varchar(20) not null,
    age integer,
    salary integer

);

select * from scrumteam;

insert into scrumteam(empid, firstname, jobtitle, age, salary)
 values(1,'Mike','Tester',34,120000);

insert into scrumteam(empid, firstname, jobtitle, age, salary)
values(2,'John','Tester',32,130000);

insert into scrumteam(empid, firstname, jobtitle, age, salary)
values(3,'John','Developer',37,160000);

insert into scrumteam(empid, firstname, jobtitle, age, salary)
values(4,'Dembe','Developer',42,2000000);



commit;

update scrumteam
set salary=salary+5000;

update scrumteam
set salary = salary+3000
where jobtitle ='Tester';

--deleting column
delete from scrumteam
where empid=1;

delete from scrumteam
where jobtitle = 'Developer' and age>40;

commit;
--changing age
update scrumteam
set age = 33
where jobtitle='Tester';
--adding new column
Alter table scrumteam add gender varchar(10);

select * from scrumteam;
--gender
update scrumteam
set gender = 'M'
where empid=2;
--gender
update scrumteam
set gender = 'F'
where empid=3;


--rename
alter table scrumteam
rename column salary to annual_salary;

--drop column
--erase the whole column
alter table scrumteam drop column gender;


--changing to new name
alter table scrumteam rename  to  agileteam;


select * from agileteam;


--truncate will delete all data and drop will delete whole table
truncate table agileteam;

drop table agileteam;

create table team(

    empid Integer PRIMARY KEY,
    firstname varchar(30) not null,
    jobtitle varchar(20) not null,
    age integer,
    salary integer

);

select * from team;

insert into team(empid, firstname, jobtitle, age, salary)
values(1,'Mike','Tester',34,120000);

insert into team(empid, firstname, jobtitle, age, salary)
values(2,'John','Tester',32,130000);

insert into team(empid, firstname, jobtitle, age, salary)
values(3,'John','Developer',37,160000);

delete from team;







