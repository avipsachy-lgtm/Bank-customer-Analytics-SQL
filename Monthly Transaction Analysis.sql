/*3. Monthly Transaction Analysis
Analyzed monthly transaction volume and transaction amounts.
*/
select 
date_trunc('month',transaction_date) as transaction_month,
count(transaction_id)as total_transactions,
sum(amount)as total_transaction_amount
from transaction
group by date_trunc('month',transaction_date)
order by transaction_month;

