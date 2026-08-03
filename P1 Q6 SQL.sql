/* 6. Loan Distribution Analysis examined loan amounts and loan 
amounts and loan types across customer groups.*/

select
l. loan_type,
count(l.loan_id) as total_loans,
sum(l.loan_amount)as total_loan_amount,
avg(l.loan_amount) as average_loan_amount 
from loan l
group by l.loan_type 
order by total_loan_amount desc;


--Loan Distribution by Customer Segment
SELECT
    CASE
        WHEN a.balance >= 1000000 THEN 'High Value'
        WHEN a.balance >= 500000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment,
    l.loan_type,
    COUNT(l.loan_id) AS total_loans,
    SUM(l.loan_amount) AS total_loan_amount
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN loan l
    ON c.customer_id = l.customer_id
GROUP BY
    customer_segment,
    l.loan_type
ORDER BY
    customer_segment,
    total_loan_amount DESC;