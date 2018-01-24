create table DEPT_tab 
(
	Id int primary key not null,
	Name varchar(25)
)
insert into DEPT_tab values (1001,'Prithvi')
insert into DEPT_tab values (1002,'Agni')
insert into DEPT_tab values (1003,'Tejas')
insert into DEPT_tab values (1004,'Trishul')

alter table DEPT_tab add location varchar(15)

select *from DEPT_tab

update DEPT_tab set location='B' where id = 1001
update DEPT_tab set location='C' where id = 1002
update DEPT_tab set location='H' where id = 1003
update DEPT_tab set location='D' where id = 1004



sp_rename '[DEPT_tab].[location]','place'


sp_rename 'DEPT_tab','ITPL_tab'



alter table ITPL_tab drop constraint [PK__DEPT_tab__3214EC070B6611D4]

select *from ITPL_tab





alter table ITPL_tab drop constraint Id

