	--

	
		create table attendance
		(
			ename varchar(20),
			edate date,
			etime datetime
		)
		

		insert into attendance values('A', '1998-01-01' , '09:31:00')
		insert into attendance values('B', '1998-01-02' , '09:29:00')
		insert into attendance values('C', '1998-01-03' , '09:32:00')
		insert into attendance values('D', '1998-01-04' , '09:33:00')
		insert into attendance values('E', '1998-01-05' , '09:34:00')
		insert into attendance values('E', '1998-01-05' , '09:34:00')
		insert into attendance values('F', '1998-01-06' , '09:36:00')
		insert into attendance values('F', '1998-01-06' , '09:36:00')
		insert into attendance values('F', '1998-01-06' , '09:36:00')
		insert into attendance values('F', '1998-01-06' , '09:36:00')
		insert into attendance values('F', '1998-01-06' , '09:36:00')
		insert into attendance values('F', '1998-01-06' , '09:36:00')

		select *from attendance

		create table report
		(
			ename varchar(20),
			limitcrossed date,
		)

		select *from report

		--

		create trigger reportTrg
			on attendance
			for insert
			as
			declare @en varchar(20), @ed date, @et time, @ecount int
			select @en = ename, @ed = edate, @et = etime from inserted
			select @ecount = count(*)
								from attendance
								where ename=@en and etime > '09:30:00' 
							
				if @ecount > 5
					begin
					insert into report values (@en ,@ed)
					end
				else
					PRINT 'sTILLL gOOD tO gO'