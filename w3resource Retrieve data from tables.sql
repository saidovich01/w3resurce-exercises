select 'This is SQL Exercises, Practise and Solutions';

select 1, 2, 3;

select 50+50;

select 2*5+10-5;

select name, commission from salesman;

select ord_date, salesman_id, ord_no, purch_amt from orders;

select name, city from salesman
where city = 'PARIS';

select customer_id, cust_name, city, grade, salesman_id from customer
where grade = 200;

select ord_no, ord_date, purch_amt from orders
where salesman_id = 5001;

select year, subject, winner from nobel_win
where year = 1970;

select winner from nobel_win
where SUBJECT = 'Literature' and YEAR = 1971;

select year, subject from nobel_win
where winner = 'Dennis Gabor';

select winner from nobel_win
where SUBJECT = 'Physics' and YEAR > 1950;

select YEAR, subject, winner from nobel_win
where SUBJECT = 'Chemistry' and YEAR between 1965 and 1975;

select * from nobel_win
where WINNER in ('Menachem Begin', 'Yitzhak Rabin') and YEAR > 1972;

select pro_id, pro_name, pro_price, pro_com from item_mast
where pro_price between 200 and 600;

select pro_name, pro_price from item_mast
where pro_price >= 250
order by pro_price desc, pro_name asc;

select emp_idno, emp_fname, emp_lname, emp_dept from emp_details
where emp_lname = 'Snares';

select emp_idno, emp_fname, emp_lname, emp_dept from emp_details
where emp_dept = 57;

select customer_id, cust_name, city, grade, salesman_id from customer
where grade > 100;

select customer_id, cust_name, city, grade, salesman_id from customer
where grade > 100 and city = 'New York';

select customer_id, cust_name, city, grade, salesman_id from customer
where grade < 100 or city = 'New York';

select customer_id, cust_name, city, grade, salesman_id from customer
where grade < 100 or city = 'New York';

select * from orders
where (ord_date = '2012-09-10' and salesman_id > 5005) or purch_amt > 1000;

select * from salesman
where commission between 0.10 and 0.12;

select * from orders
where purch_amt < 200 or (ord_date >= '2012-02-10' and customer_id < 3009);

select * from orders
where (ord_date = '2012-08-17' or customer_id > 3005) and purch_amt < 1000;

select * from emp_details
where emp_lname in ('Dosni', 'Mardy');

select * from emp_details
where emp_dept in (47, 63);
