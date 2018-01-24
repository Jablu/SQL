select * from EMPLOYEE
select * from PROJECT
select * from Department

select * from WORKS_ON

ALTER table WORKS_ON alter column JOB varchar(50) null 

--1
select empno from WORKS_ON WHERE JOB  = 'Clerk'
--2
select empno from WORKS_ON WHERE PROJECT_N = 'P2' AND EMPNO < 10000
--3
select empno from WORKS_ON WHERE ENTER_DATE not in 1998
--4
select empno from WORKS_ON WHERE PROJECT_N = 'P1' AND JOB IN ('Analyst', 'Manager') 
--5
select ENTER_DATE from WORKS_ON where PROJECT_N = 'P2' AND JOB IS NULL
--6
select EMP_NO, EMP_LNAME from EMPLOYEE where EMP_FNAME LIKE '%t%t%'
--7
select EMP_NO, EMP_FNAME from EMPLOYEE where EMP_LNAME LIKE '_[o,a]%es'
--8
--9
select 