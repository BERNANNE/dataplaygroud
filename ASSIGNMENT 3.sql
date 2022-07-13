SET search_path TO sales_transactions;

SELECT id,name,primary_poc
FROM accounts
WHERE(name LIKE 'C%' OR name LIKE 'W%') 
AND (primary_poc LIKE '%ana%' OR primary_poc LIKE '%Ana%') 
AND (primary_poc NOT LIKE '%ant%');

SELECT account_id,drinks_qty,stationeries_qty
FROM orders
WHERE (account_id = 1001 OR account_id = 2671) 
AND (drinks_qty > 5000 OR stationeries_qty > 1000);

SELECT sales_rep_id, COUNT(name)
FROM accounts
GROUP BY sales_rep_id
ORDER BY COUNT(name) DESC;

SELECT id,name 
FROM sales_reps
WHERE ID = 321970;

----- WITH JOINS------
SELECT a.sales_rep_id AS sales_rep_id, a.name AS num_acconts,sales_reps.name
FROM accounts a
JOIN sales_reps s
ON a.sales_rep_id = s.id
GROUP BY a.sales_rep_id,s.name

SELECT channel, count(channel)
FROM web_events
GROUP BY channel
HAVING count(channel) > 500;

SELECT web_events.*,accounts.*
FROM web_events 
JOIN accounts 
ON web_events.account_id = accounts.id;

SELECT a.id AS account_id,a.name AS account_name,s.id  AS sales_rep_id,s.name AS sales_rep_name
FROM accounts a
JOIN sales_reps s
on s.id = a. sales_rep_id


SELECT r.name AS region_name,s.name AS sales_rep_name,a.name AS account_name
FROM region r
JOIN  sales_reps s
on r.id = s.region_id
JOIN accounts a
on s.id = a. sales_rep_id

SELECT r.name AS region_name,o.id AS account_id,o.total AS total_qty_ordered,
o.total_usd AS total_amt_ordered,
a.name AS account_name
FROM region r
JOIN sales_reps s
ON r.id = s.region_id
JOIN accounts a
on s.id = a.sales_rep_id
JOIN orders o
on a.id = o.account_id;

SELECT web_events.channel,orders.*,accounts.name AS customer_name
FROM web_events
JOIN accounts
ON web_events.account_id = accounts.id
JOIN orders
on accounts.id = orders.account_id
WHERE channel in ('facebook','direct');

