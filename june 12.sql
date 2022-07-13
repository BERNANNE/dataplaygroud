SET search_path to sales_transactions;
----ORDER BY CLAUSE-----
 
SELECT* 
FROM orders
ORDER BY drinks_qty ASC,
groceries_qty DESC, Stationeries_qty DESC;

---WHERE CLAUSE-----
SELECT *
FROM orders
WHERE groceries_qty > 1000
ORDER BY groceries_qty;

SELECT id,total,total_usd
FROM orders
WHERE total_usd <=1000
ORDER BY total_usd desc;

SELECT*
FROM orders
WHERE account_id = 2771;

SELECT*
FROM web_events;

SELECT DISTINCT (channel)
FROM web_events;

SELECT*
FROM web_events
WHERE channel ='facebook';

---logical operators----
---LIKE,ILIKE-----
SELECT *
FROM accounts
WHERE name LIKE 'S%'
ORDER BY website;

SELECT*
FROM accounts
WHERE name ILIKE '%E'
ORDER BY name DESC;

SELECT *
FROM accounts
WHERE name ILIKE '%one%';

SELECT *
FROM accounts
WHERE name ILIKE 'de%';

SELECT *
FROM accounts
WHERE name ILIKE '_____';

SELECT *
FROM accounts
WHERE name ILIKE '_o___';

SELECT *
FROM accounts
WHERE name ILIKE '_o%';

SELECT* 
FROM accounts
where primary_poc ILIKE '_her%';












