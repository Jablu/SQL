 create view Employee_view as
 select * 
 from Employee
 where dept_no='d2'
 select * from Employee_view
 
 create view Project_view as
 select project_no,project_name from Project
 select * from Project_view

 create view Last_view as
 select * from Employee 
 where emp_lname ='M%'
 select * from Last_view

 create view This_view as
 select * from Project_view

 Alter view Employee_view
 as
 select * 
 from Employee
 where dept_no='d2' or dept_no='d1'
 select * from Employee_view 


 Insert into 



 select * from Project
 select * from Employee
 select * from Department
 select * from Works_on