--Error Handling in TSQL

create procedure sp_AddEmp(@ec int, @en varchar(20), @sal int, @deptid INT)
as

BEGIN TRY
--STATEMENT--
	insert into tbl_employee values(@ec, @en, @sal, @deptid)
	print 'Record Inserted'
END TRY

BEGIN CATCH
	select ERROR_LINE(),ERROR_MESSAGE(),ERROR_NUMBER()
END CATCH

--
drop procedure sp_AddEmp

ALTER procedure sp_AddEmp(@ec int, @en varchar(20), @sal int, @deptid int)
as

BEGIN TRY
--STATEMENT--
	insert into tbl_employee values(@ec, @en, @sal, @deptid)
	print 'Record Inserted'
END TRY

BEGIN CATCH
	select ERROR_LINE(),ERROR_MESSAGE(),ERROR_NUMBER()
END CATCH

execute sp_AddEmp 105, 'Suresh', 5555, 201
select *from tbl_employee


select *from sys.messages where message_id = 2627