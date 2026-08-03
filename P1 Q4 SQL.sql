/* 4.branch- wise Depoite Analyis
Compared total deposits across different branches
*/
select 
  b.branch_id,
  b.branch_name,
  sum(a.balance) as total_deposits
from branchs b
join accounts a
  on b.branch_id = a.branch_id
group by b.branch_id,b.branch_name
order by total_deposits desc;

