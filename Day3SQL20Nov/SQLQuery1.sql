select *from tbl_employee

-- Nested Query
-- Find the employee who are working with employee 101

select *
from tbl_employee
where deptid = (select deptid
				from tbl_employee
				where ecode = 101)


select *
from tbl_employee
where deptid IN (select deptid
				from tbl_employee
				where ecode IN (101, 102))


-- Correlated Query
-- Find those employees whose salary is greater 
-- than or equal to average salary of his department

select *
from tbl_employee as o
where salary>(select AVG(salary)
				from tbl_employee as i
				where i.deptid = o.deptid)
