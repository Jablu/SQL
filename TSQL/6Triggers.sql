
--Syntax
--1) Database Triggers

		create trigger t1
		on database
		for create_table
		as 
		--statements
			rollback
			print 'You can not create table in this DB, contact admin'
			
			
		--
			create table XYZ
			(
				ecode int
			)			

-- 1.2) Remove Triggers
		drop trigger t1 on database

-- 1.3) Enablee/Disable
		disable trigger t1 on database
		enable trigger t1 on database

--
		create trigger t2
		on database
		for drop_table
		as 
		rollback
		print 'You can"t drop table in this DB'


		disable trigger t2 on attendance
		drop trigger t2
--	
		truncate table XYZ
		truncate table tbl_employee
--
		drop table XYZ
--
		insert into tbl_employee values (108, 'J', 8888, 202)

-- 2) DML Triggers: Insert
		create trigger trig_emp
		on tbl_employee
			for insert
			as
			print 'Insert Done Yahoo'


		insert into tbl_employee values (109, 'X', 9999, 206)
		select *from tbl_employee

--Example: log the records deleted in the log table

		create table tbl_log
		(
		ecode int,
		ename varchar(1),
		salary int,
		deptid int,
		date_of_trans datetime
		)
		select *from tbl_log

-- 2.1) DML Triggers: Delete
	
		create trigger t2_del
				on tbl_employee
				for delete
				as
				declare @ec int, @en varchar(1), @sal int, @did int
		--get the record delete from 'deleted' table
				select @ec = ecode, @en = ename, @sal = salry, @did = deptid
				from deleted
		--log the record in log table
				insert into tbl_log values (@ec, @en, @sal,@did, GETDATE())
				print 'Record deleted and logged in log table'

	
		select *from tbl_employee
		delete from tbl_employee where ecode = 101  OR ecode = 102
		select *from tbl_log


-- Instead of Triggers

select *from j_view

delete from j_view where deptid = 203


create trigger j_trig
on j_view
for delete
as
delete from tbl_employee where deptid = 203
delete from tbl_dept where deptid = 203
pprint 'Record Deleted'