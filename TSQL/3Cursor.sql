
create table tbl_employee
(
	ecode int,
	ename varchar,
	salry int,
	deptid int
)

insert 

-- 

create procedure sp_cursorEg
as
--define the cursor
declare cursor cur
as
	select salary
	from tbl_employee
	where deptid = @did
	

--open the cursor
open cur


--fetch record
fetch next from cur into @ec, @sal
while @@FETCH_STATUS = 0
begin
	select @bonus = @per * 0.01 @sal
	select @ec as Ecode, @sal as Salary, @bonus as Bonus
	fetch next from cur into @ec, @sal
end

--dealloccate the cursor
deallocate cur

exec sp_cursorEg 202

select *from tbl_employee