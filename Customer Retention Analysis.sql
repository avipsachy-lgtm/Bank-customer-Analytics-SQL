/*8. Customer Retention Analysis
Measured customer activity trends and retention patterns over time.*/
Select
    date_trunc('month', transaction_date) as activity_month,
    count(distinct customer_id) as active_customers
from transaction t
join accounts a
    on t.account_id = a.account_id
group by Date_trunc('month', transaction_date)
order by activity_month;
