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

