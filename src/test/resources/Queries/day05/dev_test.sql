create table Developers(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);
create table Testers(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);

insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers values (1, 'Steven', 110000);
insert into testers values(2, 'Adam', 105000);
insert into testers values (3, 'Lex', 100000);

commit work;

select * from DEVELOPERS;

select * from TESTERS;


--union removes duplicates and sorts
select * from DEVELOPERS
union
select  *from TESTERS;


--doesn't remove duplicates and doesn't sort
select * from DEVELOPERS
union all
select  *from TESTERS;


--minus removes same data from first table and gives result from first table
select  names from DEVELOPERS
minus
select   names from TESTERS;


select  names from Testers
minus
select   names from Developers;


--intersect returns similar data from both tables
select  names from DEVELOPERS
intersect
select   names from TESTERS;
