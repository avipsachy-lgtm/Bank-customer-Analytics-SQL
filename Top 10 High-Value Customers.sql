/*1. Top 10 High-Value Customers

Identified customers with the highest account balances and transaction values
*/

select 
c.customer_id,
c.customer_name,
sum(a.balance) as total_balance,
sum(t.amount)as total_transaction_value 
from customers c
join accounts a
on c.customer_id=a.customer_id
join transaction t
on a. account_id =t.account_id
group by 
c.customer_id,
c.customer_name
order by 
total_balance desc,
total_transaction_value desc
LIMIT 10;
