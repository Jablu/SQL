-- Function Introduction

create function fn_GetBonus (@salary int) returns decimal
as
begin


	declare @bonus decimal
	if @salary >5000
		select @bonus = @salary * 0.1
	else
		select @bonus = @salary * 0.2

return @bonus
end

-- Calling
-- 1) In TSQL Block
declare @salary int, @bonus decimal
select @salary = 7000
select @bonus = dbo.fn_getbonus(@salary)
select @salary as My_Salary, @bonus as My_Bonus

-- 2) In Selected Statement
select ecode, ename, salary, deptid, dbo.fn_GetBonus(salary) as Salary
from tbl_employee




-- TABLE VALUED FUNCTION
create function fn_getEmployeeByID(@did int) returns table
as
	
	returns(select*
					from tbl_employee
					where deptid = @did)


-- Calling
select *from dbo.fn_getEmpsByDid(202)

select*
from dbo.fn_getEmpsByDid(202) as e,tbl_dept as d
where e.deptid = d.deptid


----

create function fn_getEmployeeByID(@did int) returns table
as
	
BEGIN
@declare  
	returns(select*
					from tbl_employee
					where deptid = @did)

END
--
alter function
--
drop function