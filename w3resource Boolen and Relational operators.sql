select * from customer
where grade > 100

select * from customer
where city = 'New York' and grade > 100

select * from customer
where city = 'New York' or grade > 100

select * from customer
where city = 'New York' or grade < 100

select * from customer
where city <> 'New York' and grade < 100

select * from orders
where (ord_date = '2012-09-10' and salesman_id > 5005) or purch_amt > 1000

select * from salesman
where commission between 0.10 and 0.12

select * from orders
where (purch_amt < 200 or ord_date >= '2012-02-10') and customer_id < 3009

select * from orders
where (ord_date = '2012-08-17' or customer_id > 3005) and purch_amt < 1000

select ord_no, purch_amt,	
	(100 * purch_amt) / 6000 as 'Achieved',
	(100 * (6000 - purch_amt) / 6000) as 'Unachieved'
from orders
where (purch_amt * 100) / 6000 > 50

select * from emp_details
where emp_lname in ('Dosni', 'Maardy')

select * from emp_details
where emp_dept in (47, 63)
