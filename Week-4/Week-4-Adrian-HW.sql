--1
select count(distinct order_id) from sales where date = '2023-03-18;

--2
select count(order_id) from sales left join customers on sales.customer_id = customers.customer_id where date = '2023-03-
18' and First_name = 'John' and Last_name = 'Doe';

--3
select count(distinct customer_id),  avg(revenue) from sales where date between '2023-01-01' and '2023-01-31';

--4
select * from ( select sum(revenue) as sum_rev, department from sales left join items on sales.item_id = items.item_id where date between '2022-01-01' and '2022-12-31' group by department ) as a where sum_rev < 600;

--5
select max(order_total) AS max_ord_rev, MIN(order_total) AS min_ord_rev from ( select Order_id, sum(Revenue) AS order_total from sales, group by Order_id ) AS order_totals;

--6
select * from  (select order_id, sum(revenue) as rev_sum from sales group by order_id  order by rev_sum desc limit 1) as
a;