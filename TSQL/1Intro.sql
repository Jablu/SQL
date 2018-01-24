--

declare @n1 int, @n2 int,@result int

select @n1 = 100, @n2 = 200

select @result = @n1 + @n2

select @n1 as N1, @n2 as N2, @result AS RESULT

print 'N1 '+ convert(char(5),@n1)
print 'N2 '+ convert(char(5),@n2)
print @result

--
create procedure sp_getbonus(@salary int)
as

declare @bonus numeric (7,2)
--select @salary = 7000
if @salary > 5000
begin
	select @bonus = 0.1 * @salary
end
else
	select @bonus = 0.2 * @salary

select @salary as Salary, @bonus as Bonus

--

execute sp_getbonus 6000

sp_help sp_getbonus 

sp_helptext sp_getbonus 

--


alter procedure sp_getbonus(@salary int) with encryption
as

declare @bonus numeric (7,2)
--select @salary = 7000
if @salary > 5000
begin
	select @bonus = 0.1 * @salary
end
else
	select @bonus = 0.2 * @salary

select @salary as Salary, @bonus as Bonus

--

drop procedure sp_getbonus

--

alter procedure sp_getbonus(@salary int, @bonus numeric (5,2) output) with encryption
as

-- declare @bonus numeric (7,2)
-- select @salary = 7000
if @salary > 5000
begin
	select @bonus = 0.1 * @salary
end
else
	select @bonus = 0.2 * @salary

select @salary as Salary, @bonus as Bonus








declare @sal int, @b as numeric(5,2)
select @sal = 7000 , @b = 0
exec sp_getbonus @sal, @b output
select @sal as Salary, @b as Bonus