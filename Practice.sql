SET search_path TO sales_transactions;

SELECT id,account_id,groceries_qty 
FROM orders;

SELECT id,name
FROM sales_reps;

SELECT id,name,
FROM accounts;

SELECT id,total
FROM orders;

SELECT id,account_id,total_usd
FROM orders
ORDER BY total_usd DESC
LIMIT 5;

SELECT id,name
FROM accounts
LIMIT 5 OFFSET 346;

SELECT id,occurred_at
FROM web_events;

SELECT id,name
FROM sales_reps
LIMIT 10;

SELECT id,name,primary_poc
FROM accounts
LIMIT 5;

SELECT id,occurred_at,groceries_qty,stationeries_qty
FROM orders
LIMIT 6
OFFSET 1;

SELECT*
FROM web_events
LIMIT 15;

SELECT id, account_id,groceries_qty,drinks_qty
FROM orders
ORDER BY groceries_qty desc,drinks_qty ASC;

SELECT id,occurred_at,total_usd
FROM orders
LIMIT 15;
----where clause---

SELECT id,groceries_qty,groceries_usd
FROM orders
WHERE groceries_usd > 1000
ORDER BY groceries_usd;

SELECT id,total,total_usd
FROM orders
WHERE total_usd <=1000
ORDER BY total_usd DESC ;

SELECT channel
FROM web_events
WHERE channel = 'facebook';

----Assignment 6----
SELECT id,primary_poc,website
FROM accounts 
where name ='Exxon Mobil';

SELECT id,occurred_at,drinks_qty,groceries_qty,stationeries_qty
FROM orders
WHERE drinks_qty = 0;

SELECT id,stationeries_usd
FROM orders
WHERE stationeries_usd > 1000
ORDER BY stationeries_usd ;

----PRACTICE----
SELECT id,name,website
FROM accounts
WHERE name LIKE 'S%'
ORDER BY name;

SELECT id,name
FROM accounts
WHERE name LIKE '%e'
ORDER BY name DESC;

SELECT id,name,primary_poc
FROM accounts
WHERE name ILIKE 'de%';

SELECT id,name
FROM accounts
WHERE name ILIKE '_____';

---assignment 7----

SELECT id,name,website
FROM accounts
where name ILIKE 'citi%';

SELECT id,name,primary_poc
FROM accounts
WHERE primary_poc ILIKE '_her%';

SELECT name,primary_poc,sales_rep_id
FROM accounts
WHERE name IN ('Walmart','Target','Nordstrom');

SELECT id,occurred_at,channel,account_id
FROM web_events
WHERE channel in('adwords','organic')
ORDER BY occurred_at;

----Assignment 8-----

SELECT id,drinks_qty
FROM orders
WHERE drinks_qty IN (1,3)
ORDER BY drinks_qty;

SELECT account_id,total
FROM orders
WHERE account_id in (3011, 2401, 2061 )
ORDER BY total DESC;


----not in-----
SELECT id,stationeries_qty
FROM orders
WHERE stationeries_qty !=0
ORDER BY stationeries_qty ;

SELECT id,channel
FROM web_events
WHERE channel NOT IN ('twitter','facebook');

----ASSIGNMENT 9----

SELECT id,name
FROM accounts 
WHERE name NOT ILIKE 'a%'
ORDER BY name;

---TASK 10---
SELECT id,account_id,stationeries_qty
FROM orders
WHERE stationeries_qty > 1000 AND account_id IN (1001,2671,3111)
ORDER BY id;

SELECT id,channel
FROM web_events
where channel IN ('facebook','twitter') AND account_id = 1001;

SELECT id,name,region_id 
FROM sales_reps
WHERE name ILIKE '_____ B%' AND region_id = 1;

-----assignment 10-----

SELECT id,drinks_usd,stationeries_usd,total_usd 
FROM ORDERS 
WHERE drinks_usd < 100 AND stationeries_usd > 1000 AND total > 10000
ORDER BY total_usd;

SELECT id,name
FROM accounts
WHERE name LOWER(LEFT(name ,1)) NOT IN ('C')
NOT ILIKE 'C'AND name ILIKE '%s';





