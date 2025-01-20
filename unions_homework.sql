(select name, 'Salesman' from salesman
where city = 'London')
union
(select cust_name, 'Customer' from customer
where city = 'London')



select salesman_id, city from salesman
union
select salesman_id, city from customer;



select customer_id, salesman_id from customer
union 
select customer_id, salesman_id from orders;

select 
    salesman_id,
    max(purch_amt) as highest_on,
    min(purch_amt) as lowest_on
from orders
group by salesman_id;


select customer_id, city, grade, 
	iif (grade >= 300, 'high rating', 'low rating')
	as rating
from customer;

--- To'liq bajara olmadim --- 6/9 
