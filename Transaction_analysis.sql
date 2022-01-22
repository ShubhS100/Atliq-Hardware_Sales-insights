select count(*) from sales.transactions

-- There are some currency as USD in the data.
select distinct(currency)
from sales.transactions

-- We will remove rows which have USD as currency.
delete from sales.transactions
where currency like '%USD%'

-- Product wise analysis

-- Products which are sold the most

select product_code,sales_qty,sales_amount
from sales.transactions
group by product_code
order by sales_qty desc
limit 15

-- Products which are sold least

select product_code,sales_qty,sales_amount
from sales.transactions
group by product_code
order by sales_qty 
limit 15

-- Products which made high sales

select product_code,sales_qty,sales_amount
from sales.transactions
group by product_code
order by sales_amount desc
limit 15

-- Products which made least sales

select product_code,sales_qty,sales_amount
from sales.transactions
group by product_code
order by sales_qty 
limit 15

-- Product type wise sales and quantity sold

select y.product_type,count(sales_qty),sum(sales_amount)
from sales.transactions x
join sales.products y
on x.product_code = y.product_code
group by product_type
order by sales_amount desc

-- Year wise sales and quantity sold --

-- 2017

select count(sales_qty) as Quantity_sold, sum(sales_amount) as Total_sales
from sales.transactions x
inner join sales.date y
on x.order_date= y.date
where year = 2017

-- 2018

select count(sales_qty) as Quantity_sold, sum(sales_amount) as Total_sales
from sales.transactions x
inner join sales.date y
on x.order_date= y.date
where year = 2018

-- 2019

select count(sales_qty) as Quantity_sold, sum(sales_amount) as Total_sales
from sales.transactions x
inner join sales.date y
on x.order_date= y.date
where year = 2019

-- 2020

select count(sales_qty) as Quantity_sold, sum(sales_amount) as Total_sales
from sales.transactions x
inner join sales.date y
on x.order_date= y.date
where year = 2020

-- Customer wise analysis --

-- Customer with highest sales.

select customer_code,sales_qty,sales_amount
from sales.transactions
group by customer_code
order by sales_amount desc
limit 15

-- Customer with least sales.

select customer_code,sales_qty,sales_amount
from sales.transactions
group by customer_code
order by sales_amount
limit 15

-- customer who purchased most items

select customer_code,sales_qty,sales_amount
from sales.transactions
group by customer_code
order by sales_qty desc
limit 15

-- Customer who purchased least items 

select customer_code,sales_qty,sales_amount
from sales.transactions
group by customer_code
order by sales_qty 
limit 15

-- Customer type wise analysis

select y.customer_type,count(sales_qty),sum(sales_amount)
from sales.transactions x
join
sales.customers y
on x.customer_code = y.customer_code
group by customer_type

-- Market wise analysis

-- Market which generated highest sales

select market_code as MARKET,sales_qty as Quantity_Sold,sales_amount as Total_Sales
from sales.transactions
group by market_code
order by sales_amount desc

-- Market which generated least sales

select market_code as MARKET,sales_qty as Quantity_Sold,sales_amount as Total_Sales
from sales.transactions
group by market_code
order by sales_amount

-- Market Zone wise analysis 

select y.zone,count(sales_qty),sum(sales_amount)
from sales.transactions x
join
sales.markets y
on x.market_code = y.markets_code
group by zone
order by sales_amount


select distinct(zone) from sales.markets
