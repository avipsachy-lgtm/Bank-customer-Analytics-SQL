/*7. Running Balance Calculation
Used window functions to calculate running account balances.*/
Select
account_id,
transaction_date,
transaction_type,
amount,
sum(
 case 
 when transaction_type ='deposit' then amount 
 when transaction_type = 'withdrawal'then -amount 
 end
)over (
partition by account_id
order by transaction_date
) running_balance
from transaction 
order by account_id, transaction_date
;

