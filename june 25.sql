SET search_path TO sales_transactions;

------COUNT FUNCTION-----
SELECT COUNT(*)
FROM orders;

SELECTCOUNT (id)
FROM orders;

SELECT COUNT(*)
FROM web_events;

SELECT COUNT(name)
FROM accounts;

----SUM FUNCTION------
----for each order-----
SELECT id,drinks_usd,groceries_usd,drinks_usd + groceries_usd AS drinks_grocceries_usd
FROM orders;

____suming the entire table-----
SELECT SUM(drinks_usd + groceries_usd)
FROM orders;

SELECT SUM(stationeries_usd)
FROM orders

SELECT SUM(drinks_qty)
FROM orders;


------MIN MAX FXN-------

SELECT MIN(drinks_qty )
FROM orders;

SELECT MAX(stationeries_qty)
FROM orders;

SELECT MIN(occurred_at)
FROM orders
---OR---
SELECT occurred_at
FROM orders 
ORDER BY occurred_at

SELECT MAX(occurred_at)
FROM web_events;

-----AVG FXN----

SELECT AVG(drinks_qty) AS,AVG(groceries_qty),AVG(stationeries_qty)
FROM orders;

 SELECT ROUND(AVG(total_usd),2)
 FROM orders
 WHERE account_id = 1001
 
 -------ANALYSIS-------
SELECT account_id,SUM(total_usd )
FROM orders
GROUP BY account_id;

----PRACTICE-----

SELECT a.name AS account_name, o.total AS quantity_ordered
FROM accounts a
JOIN orders o
ON a.id = o. account_id
ORDER BY 2 DESC;

-----OR-----
SELECT a.name AS account_name, MAX(O.total) AS quantity_ordered
FROM accounts a
JOIN orders o
ON a.id = o. account_id
GROUP BY 1
ORDER BY 1 DESC;

SELECT a.name AS account_name, SUM(O.total_usd) AS amount_spent
FROM accounts a
JOIN orders o
ON a.id = o. account_id
GROUP BY 1
ORDER BY 2 DESC;

SELECT a.primary_poc,w.occurred_at
FROM accounts a
JOIN web_events w
on a.id = w.account_id
ORDER BY 1









