
create table ExpenseTable
(
	expense_id int,
	amount int,
	expDate date
)

insert into	 ExpenseTable values (1, 6000, '1998-01-01') 

drop table ExpenseTable



create procedure sp_expenseRecord (@dailyExp int)
as
	declare @salary int, @sum int, @check int 
	select @salary = 50000
	select @sum = SUM (amount) FROM ExpenseTable
	select @check = @sum + @dailyExp
		if @check < 25000
			begin
				insert into ExpenseTable (amount) values (@dailyExp)
			end
		else 
			print 'Expense amount exceeded 50%'  

--






alter procedure sp_expenseRecord (@id int,@dailyExp int,@date date)
as
	declare @salary int, @sum int, @check int 
	select @salary = 50000
	select @sum = SUM (amount) FROM ExpenseTable
	select @check = @sum + @dailyExp
		if @check < 25000
			begin
				insert into ExpenseTable (expense_id) values (@id)
				insert into ExpenseTable (amount) values (@dailyExp)
				insert into ExpenseTable (expDate) values (@date)
				
			end
		else 
			print 'Expense amount exceeded 50%' 




alter procedure sp_expenseRecord (@id int,@dailyExp int,@date date)
as
	declare @salary int, @sum int, @check int 
	select @salary = 50000
	select @sum = SUM (amount) FROM ExpenseTable
	select @check = @sum + @dailyExp
		if @check < 25000
			begin
				
				insert into ExpenseTable values (@id, @dailyExp,@date)
				
				
			end
		else 
			print 'Expense amount exceeded 50%' 



execute sp_expenseRecord @id = 2, @dailyExp = 6000, @date = '1998-01-02'

execute sp_expenseRecord @id = 3, @dailyExp = 5000, @date = '1998-01-03'

execute sp_expenseRecord @id = 4, @dailyExp = 9000, @date = '1998-01-04'

execute sp_expenseRecord @id = 5, @dailyExp = 3000, @date = '1998-01-05'

select *from ExpenseTable