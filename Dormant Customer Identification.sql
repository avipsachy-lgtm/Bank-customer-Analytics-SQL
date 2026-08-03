/*2. Dormant Customer Identification
Detected customers with no transactions within a specified period.
*/
select 
c.customer_id,
c.customer_name,
max(t.transaction_date) as last_transaction_date
from customers c
left join accounts a
on c.customer_id = a.customer_id
left join transaction t 
on c.customer_id = t. account_id
group by c. customer_id, c.customer_name
having max(t.transaction_date)< current_date -interval '90 days'
or max(t.transaction_date) is null;

