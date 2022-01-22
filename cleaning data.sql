-- Cleaning data

-- Deleting records which does have sales amount 0 or below that.
select * from sales.transactions 
where sales_amount <= 0

delete from sales.transactions
where sales_amount <= 0

select * from sales.transactions

-- Due to currency column appearing twice when distincted, this could mean that the record might have duplicate values.

select distinct(currency) 
from transactions 

select count(*) 
from transactions
where currency = 'INR\r'

select count(*) 
from transactions
where currency = 'INR'

select count(*) 
from transactions
where currency = 'USD\r'

select count(*) 
from transactions
where currency = 'USD'

select *
from transactions 
where currency = 'USD' or currency = 'USD\r' -- check duplicates


-- We will keep records with 'INR\r' and 'USD\r'currency code as it has more records compared to 'INR' and 'USD'

delete from transactions
where currency = 'INR' 

delete from transactions
where currency = 'USD' 


