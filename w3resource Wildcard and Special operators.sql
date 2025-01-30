select * from salesman
where city in ('Paris', 'Rome')

select * from salesman
where city = 'Paris' or city = 'Rome'

select * from salesman
where city not in ('Paris', 'Rome')

select * from customer
where customer_id in (3007, 3008, 3009)

select * from salesman
where commission between 0.12 and 0.14

select * from orders
where purch_amt between 500 and 4000 and purch_amt not in (948.50, 1983.43)

select * from salesman
where name like 'A%' or name like 'L%'

select * from salesman
where name not like 'A%' and name not like 'M%'

select * from customer
where cust_name like 'B%'

select * from customer
where cust_name like '%n'

select * from salesman
where name like 'N__l%'




