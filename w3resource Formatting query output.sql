select salesman_id, name, concat(commission * 100, '%') as '%' from salesman

select 'For', ord_date, 'there are', count(ord_no) as count, 'orders' from orders
group by ord_date

select * from orders
order by ord_no asc

select * from orders
order by ord_date desc

select * from orders
order by ord_date , purch_amt desc

select cust_name, city, grade from customer
order by customer_id

select salesman_id, ord_date, max(purch_amt) as max from orders
group by salesman_id, ord_date
order by salesman_id, ord_date desc

select cust_name, city, grade from customer
order by 3 desc

select customer_id, count(*) as count, max(purch_amt) as max from orders
group by customer_id
order by 2 desc

select ord_date, sum(purch_amt) as sum, sum(purch_amt * 15 / 100) as '15%' from orders
group by ord_date
order by ord_date

