SET SEARCH_PATH TO SALES_TRANSACTIONS;


SELECT a.name AS account_name, COUNT(o.total) AS orders
FROM accounts a
JOIN orders o
ON a.id=o.account_id
GROUP BY 1
HAVING COUNT(o.total) > 20
ORDER BY 2

SELECT a.name AS account_name, o.total_usd AS total_amt_on_orders
FROM accounts a
JOIN orders o
ON a.id=o.account_id
WHERE o.total_usd > 30000
ORDER BY 2

SELECT a.name AS account_name, MAX(o.total_usd) AS total_amt_on_orders
FROM accounts a
JOIN orders o
ON a.id=o.account_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

SELECT a.name AS account_name,COUNT (w.channel) AS facebook_use
FROM accounts a
JOIN web_events w
ON a.id=w.account_id
WHERE channel ='facebook'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

SELECT a.name AS account_name, COUNT(o.total) AS orders
FROM accounts a
JOIN orders o
ON a.id=o.account_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;