SET search_path to sales_transactions;

----OR OPERATOR-----
SELECT id,drinks_qty,stationeries_qty
FROM orders 
WHERE drinks_qty > 4000 OR stationeries_qty > 4000;

SELECT id,groceries_qty,drinks_qty,stationeries_qty
FROM orders 
WHERE (groceries_qty = 0) AND (drinks_qty > 1000 OR stationeries_qty > 1000);

SELECT name, primary_poc
FROM accounts
WHERE (name LIKE 'C%' OR name LIKE 'W%') 
AND(primary_poc LIKE '%ana%' OR primary_poc LIKE '%Ana%') 
AND(primary_poc NOT LIKE '%ant%');

-----GROUP BY------
SELECT channel,COUNT(id)
FROM web_events
GROUP BY channel
ORDER BY COUNT(id) DESC;

SELECT channel,COUNT(channel)
FROM web_events
GROUP BY channel
ORDER BY COUNT(channel) desc;

SELECT account_id,COUNT(account_id)
FROM orders
GROUP BY 1
ORDER BY 2 DESC
LIMIT 4;

SELECT account_id,SUM(total)
FROM orders
GROUP BY 1
HAVING SUM(total) > 40000

SELECT channel,COUNT(channel)
FROM web_events
GROUP BY 1
HAVING COUNT(channel) > 500 AND channel ='facebook';

SELECT sales_rep_id, COUNT(id)
FROM accounts
GROUP BY 1
ORDER BY 2 DESC





																									 T%'