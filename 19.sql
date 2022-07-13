SET search_path TO sales_transactions;
-----SQL JOINS-----

SELECT accounts.*,orders.*
FROM accounts
JOIN orders
ON accounts.id = orders.account_id;

SELECT region.*,sales_reps.*
FROM region
JOIN sales_reps
on region.id = sales_reps.region_id;

SELECT accounts.name,orders.occurred_at,orders.total_usd
FROM accounts
JOIN orders
ON accounts.id = orders.account_id;
----account alias-----
SELECT a.name,orders.occurred_at,orders.total_usd
FROM accounts a
JOIN orders
ON a.id = orders.account_id;
---column alias-----

SELECT accounts.name AS customer_name, orders.occurred_at,orders.total_usd
FROM accounts 
JOIN orders
ON accounts.id = orders.account_id;

---SQL JOINS FOR MORE THAN TWO TABLES---
SELECT s.name AS sales_rep_name,a.name as accont_name,o.id AS order_id,o.drinks_qty
FROM sales_reps s
JOIN accounts a
ON s.id = a.sales_rep_id
JOIN orders o
on a.id = o.account_id
WHERE drinks_qty = 0;

----FURTHER JOINS----
SELECT a.primary_poc,w.occurred_at AS event_time,a.name as customer_name,w.channel
FROM accounts a
JOIN web_events w
ON a.id = w.account_id
WHERE a.name = 'Walmart';

SELECT g.name, s.name AS sales_rep_name,a.name,a.id
FROM region g
JOIN sales_reps s
ON g.id = s.region_id
JOIN accounts a
on s.id = a.sales_rep_id
ORDER BY a.name ASC









