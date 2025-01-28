select sum(purch_amt) as sum from orders

select avg(purch_amt) as avg from orders

select count(distinct salesman_id) as count from orders

select count(distinct customer_id) as count from orders

select count(grade) as count from customer

select max(purch_amt) as max from orders

select min(purch_amt) as min from orders

select city, max(grade) as max from customer
group by city

select customer_id, max(purch_amt) as max from orders
group by customer_id

select customer_id, ord_date, max(purch_amt) as max from orders
group by customer_id, ord_date

select salesman_id, max(purch_amt) as max from orders
where ord_date = '2012-08-17'
group by salesman_id

select customer_id, ord_date, max(purch_amt) as max from orders
where purch_amt > 2000
group by customer_id, ord_date

select customer_id, ord_date, max(purch_amt) as max from orders
where purch_amt between 2000 and 6000
group by customer_id, ord_date

select customer_id, ord_date, max(purch_amt) as max from orders
where purch_amt in (2000, 3000, 5760, 6000)
group by customer_id, ord_date

select customer_id, max(purch_amt) as max from orders
where customer_id between 3002 and 3007
group by customer_id

select customer_id, max(purch_amt) as max from orders
where customer_id between 3002 and 3007 
group by customer_id
having max(purch_amt) > 1000

select salesman_id, max(purch_amt) as max from orders
where salesman_id between 5003 and 5008
group by salesman_id

select count(*) as count from orders
where ord_date = '2012-08-17'

select count(city) as count from salesman

select ord_date, salesman_id, count(ord_no) as count from orders
group by ord_date, salesman_id

select avg(pro_price) as 'average price' from item_mast

select count(*) as 'number of product' from item_mast
where pro_price >= 350

select avg(pro_price) as'average price', pro_com as 'company ID' from item_mast
group by pro_com

select sum(dpt_allotment) as sum from emp_department

select emp_dept, count(*) from emp_details
group by emp_dept

