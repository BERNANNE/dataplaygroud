SET search_path to sales_transactions;


----SELECT and FROM clause----
select *
from orders;

select *
from sales_reps;

select *
from region;

-----select needed columns-----

select id,account_id,groceries_qty
from orders;

SELECT id, name
from sales_reps;

select id,name, primary_poc
from accounts;

---limit clause---
SELECT id, name
from sales_reps
LIMIT 10;

select id,name, primary_poc
from accounts
LIMIT 5;

select id,occurred_at,drinks_qty,stationeries_qty,groceries_qty
from orders
limit 6 OFFSET 5;

--ORDER BY CLAUSE----
SELECT id,account_id,total_usd
From orders
ORDER BY total_usd DESC
LIMIT 5;

SELECT name 
from accounts
ORDER BY name DESC
Limit 5;






