--Transection
select *from tbl_employee

insert into tbl_employee values(101, 'Drak', 10001 ,201)

insert into tbl_employee values(104, 'Drak', 20002 ,202)

insert into tbl_employee values(103, 'Drak', 30003 ,204)

insert into tbl_employee values(102, 'Drak', 40004 ,206)



begin tran

begin try
	delete from tbl_employee where ecode = 101
	print 'record deleted'
	insert into tbl_employee values (102,'ghght',21222,201)
	update date tbl_employee set salary = salary+1000
	where ecode = 106
	print 'record updated'
	commit tran 
	print 'ttransaction succesful'
end try
begin catch
	rollback tran
	print 'transaction rolled back'
end catch
