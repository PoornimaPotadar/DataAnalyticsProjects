SELECT * FROM sales.transactions;  

select count(*) from sales.customers;  
SELECT count(*) from sales.transactions;
select * from sales.transactions limit 5;
select * from sales.transactions where market_code = "Mark001";    #all chennai transactions
select count(*) from sales.transactions where market_code = "Mark001";    #no. of chennai transactions
select * from sales.transactions where currency = "USD";    #transactions in USD currency
select sales.transactions.*, sales.date.* from sales.transactions inner join sales.date on sales.transactions.order_date = sales.date.date;     # inner join 2 tables
select sales.transactions.*, sales.date.* from sales.transactions inner join sales.date on sales.transactions.order_date = sales.date.date where sales.date.year =2020;     # (show only 2020 transactions)inner join 2 tables for 2020 year
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date = sales.date.date where sales.date.year=2020;    #total revenue or total sales in 2020
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date = sales.date.date where sales.date.year=2020 and sales.transactions.market_code="Mark001";    #total revenue or total sales in 2020 in Chennai
select distinct product_code from sales.transactions where market_code = "Mark001";   #distinct product sold in Chennai
