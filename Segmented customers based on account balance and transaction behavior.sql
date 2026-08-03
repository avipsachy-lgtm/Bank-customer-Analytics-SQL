/* Customer segmentation segmented customers based on account balance and transaction behaviour.
*/
select 
c.customer_id,
c.customer_name,
a.balance,
count(t.transaction_id)as total_transactions,
case
when a.balance>=1000000 then 'High value'
when a.balance>=500000 then 'medium value'
else 'low value'
end as customer_segment
from customers c
join accounts a
 on c.customer_id = a.account_id
left join transaction t
 ON a.account_id = t.account_id
GROUP BY  
c.customer_id,
c.customer_name,
a.balance
order by a.balance desc;
