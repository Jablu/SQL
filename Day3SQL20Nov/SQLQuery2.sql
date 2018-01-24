select *from PURCHASES

select *from CUSTOMERS

select *
from PURCHASES AS TOTAL_AMOUNT
WHERE CUST_ID = (select Cus) 
