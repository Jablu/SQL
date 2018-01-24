select *from tbl_employee
--ALTER statements to modify objects
--1) Adding column
alter table tbl_employee add city varchar(10)
--2) How to drop a colummn from table
alter table tbl_employee drop column city
--3) Modify column size
alter table tbl_employee alter column ename varchar(25)
--4) How to rename a column
sp_rename '[tbl_employee].[Emp Name]','ename'

--5) How to rename table
sp_rename '[tbl_newname]','tbl_employee' 

--6) How to remove table

--Working with Constraints:- rules and restrictions on database
--to maintain integrity of data in database
--Types of constraints
--1) Priamry Key:- Key column of a table o maintain
-- uniqueness of records in the table ffor eg ecode,, custid,
--It doesnn't allow duplicate values in the table column and row
--no NULL valus 


drop table tbl_employee

--7) How to see table's details like structure etc
sp_help tbl_employee.ename


-- Constraint
create table test
(
	ecode int primary key,
)

create table test2
(
	ecode int,
	ename varchar(20),
	salary int,
	deptid int,
	constraint pk1 primary key(ecode) --table level constrint
)


--Check constraints:-
--allows only acceptable values defined for eg salary
--be beetween 18000 and 30000

drop table test

create table test
(

	ecode int primary key,
	ename varchar(20),
	salary int check(salary>=10000 and salary<=30000),
	city varchar(20) check(city IN ('BLR','CHN','DLI')),
	gender char(1) check(gender  IN('M','F')),
	doj datetime check(doj>getdate()),
	phno varchar(10) UNIQUE
)


insert into test values(101,'Ravi',15000,'Hyd','M','20-NOV-2017')

-- FOREIGN KEY constraint:- Referntial integrity constrain


create table parent
(
	deptid int primary key,
	dname varchar(10)
)

create table child
(
	ecode int primary key,
	ename varchar(20),
	deptid int references parent(deptid)
)

--insert rule
insert into child values(101,'Abinash Mishra',201)

insert into parent values(201,'Acount')
insert into child values(101,'Abinash Mishra',201)

select *from parent
select *from child

--delete rule
delete from parent where deptid = 201
