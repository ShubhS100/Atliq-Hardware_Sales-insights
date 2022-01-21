# ATLIQ HARDWARE SALES INSIGHTS PROJECT USING SQL AND POWER BI

## Problem Statement

Atliq hardware is a company operating in almost all the states in india, they sell electronic products. Atliq hardware owner Mr. shah is not able to track his business in a proper manner, whenever he asks sales report or any other kind of report from his sales managers all they provide is excel sheet with lots of data into it which confuses Mr. shah. Hence Mr. shah cant make any decisons for the well being of the company.
Mr. shah is a well organized business man and also wants to keep a track of his business in an organized manner so that he can make some important decisions with the help of insights of the data.

Mr. shah approaches me and asks for help, being a data analyst i love my job and would gladaly accept to help Mr. shah on this. I will first do some data analysis on sales data provided by him using SQL to gain some sales insights and then create a power BI dashboard for mr. shah to underatand his business in a well organized manner and make some data driven decisions for the well being of his company.

# Data Analysis using mysql

## Product-wise analysis

1. Products which are sold the most
   
   select product_code,sales_qty,sales_amount
   from sales.transactions
   group by product_code
   order by sales_qty desc
   limit 15
   
2. Products which are sold least

   select product_code,sales_qty,sales_amount
   from sales.transactions
   group by product_code
   order by sales_qty 
   limit 15

3. Products which made high sales

   select product_code,sales_qty,sales_amount
   from sales.transactions
   group by product_code
   order by sales_amount desc
   limit 15
   
4. Products which made least sales

   select product_code,sales_qty,sales_amount
   from sales.transactions
   group by product_code
   order by sales_qty 
   limit 15
  
5. Product type wise sales and quantity sold
   
   select y.product_type,count(sales_qty),sum(sales_amount)
   from sales.transactions x
   join sales.products y
   on x.product_code = y.product_code
   group by product_type
   order by sales_amount desc

## Year wise sales and quantity sold

1. 2017

   select count(sales_qty) as Quantity_sold, sum(sales_amount) as Total_sales
   from sales.transactions x
   inner join sales.date y
   on x.order_date= y.date
   where year = 2017
   
2. 2018

   select count(sales_qty) as Quantity_sold, sum(sales_amount) as Total_sales
   from sales.transactions x
   inner join sales.date y
   on x.order_date= y.date
   where year = 2018
   
3. 2019

   select count(sales_qty) as Quantity_sold, sum(sales_amount) as Total_sales
   from sales.transactions x
   inner join sales.date y
   on x.order_date= y.date
   where year = 2019
   
4. 2020

   select count(sales_qty) as Quantity_sold, sum(sales_amount) as Total_sales
   from sales.transactions x
   inner join sales.date y
   on x.order_date= y.date
   where year = 2020
   
## Customer wise analysis

1.Customer with highest sales

  select customer_code,sales_qty,sales_amount
  from sales.transactions
  group by customer_code
  order by sales_amount desc
  limit 15
  
2.Customer with least sales

  select customer_code,sales_qty,sales_amount
  from sales.transactions
  group by customer_code
  order by sales_amount
  limit 15

3.Customer who purchased most items

  select customer_code,sales_qty,sales_amount
  from sales.transactions
  group by customer_code
  order by sales_qty desc
  limit 15
  
4.Customer who purchased least items

  select customer_code,sales_qty,sales_amount
  from sales.transactions
  group by customer_code
  order by sales_qty 
  limit 15
  
5. Customer type wise analysis

   select y.customer_type,count(sales_qty),sum(sales_amount)
   from sales.transactions x
   join
   sales.customers y
   on x.customer_code = y.customer_code
   group by customer_type
   
## Market-wise analysis

1. Market which generated highest sales

   select market_code as MARKET,sales_qty as Quantity_Sold,sales_amount as Total_Sales
   from sales.transactions
   group by market_code
   order by sales_amount desc

2.Market which generated least sales

  select market_code as MARKET,sales_qty as Quantity_Sold,sales_amount as Total_Sales
  from sales.transactions
  group by market_code
  order by sales_amount

3.Market Zone wise analysis 

  select y.zone,count(sales_qty),sum(sales_amount)
  from sales.transactions x
  join
  sales.markets y
  on x.market_code = y.markets_code
  group by zone
  order by sales_amount
  
