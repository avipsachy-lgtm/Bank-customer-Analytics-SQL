--find all customers
select * from customes;

--find customers from kolkata 
select * from accounts
WHERE city = 'Kolkata';

--find active accounts 
select * from accounts 
WHERE status ='Active';
