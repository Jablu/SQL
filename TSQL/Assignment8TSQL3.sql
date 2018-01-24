alter table Employee add primary key (ecode)

--Store Procedure


create procedure sp_ProcessLeave (@ec int, @nolr int) 
as

declare @nola int
select @nola = no_of_leaves_applied from LeavesApplied where ecode = @ec

if @nolr > @nola
	PRINT 'AVAILABLE'
else
	PRINT 'NOT AVAILABLE'


	
alter procedure sp_ProcessLeave (@ec int, @nolr int) 
as

declare @nola int
select @nola = no_of_leaves_applied from LeavesApplied where ecode = @ec

if @nola >= @nolr
	begin
	PRINT 'AVAILABLE'
	update LeavesApplied set status = 'APPROVED' where ecode = @ec
	end
else
	begin
	PRINT 'NOT AVAILABLE'
	update LeavesApplied set status = 'REJECTED' where ecode = @ec
	end


exec sp_ProcessLeave 101,17

exec sp_ProcessLeave 102,3

select *from LeavesApplied


---Trigger

create trigger leave_trigger
				on LeavesApplied
				for update
				as
				declare @ec int, @nola int, @nolr int
				select @ec = ecode, @nola = no_of_leaves_applied from updated
				update LeavesApplied set no_of_leaves_applied =  where ecode = @ec
				print 'Trigger Did it"s job and modified the '
