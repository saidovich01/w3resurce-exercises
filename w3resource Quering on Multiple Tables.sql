select cust_name, name, salesman.city, customer.city from salesman, customer
where salesman.city = customer.city

select cust_name, salesman.name from salesman, customer
where salesman.salesman_id = customer.salesman_id

select orders.ord_no, customer.cust_name, customer.customer_id, salesman.salesman_id from salesman, customer, orders
where salesman.city <> customer.city and salesman.salesman_id = orders.salesman_id and customer.customer_id = orders.customer_id

select ord_no, cust_name from orders, customer
where orders.customer_id = customer.customer_id

select cust_name as 'Customer', grade as 'Grade', ord_no as 'Order no' from orders, customer
where orders.customer_id = customer.customer_id

select cust_name as 'Customer', customer.city as 'City', salesman.name as 'Salesman', commission from salesman, customer
where commission * 100 between 12 and 14

select ord_no, cust_name, commission as 'Commission%', purch_amt * commission as 'Commission' from salesman, customer, orders
where grade >=200

select customer.customer_id, customer.cust_name, customer.city, customer.grade, customer.salesman_id, orders.ord_no, orders.purch_amt, orders.ord_date, orders.customer_id, orders.salesman_id from customer, orders
where orders.ord_date = '2012-10-05' and customer.customer_id = orders.customer_id and customer.salesman_id = orders.salesman_id
