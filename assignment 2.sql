SET search_path TO sales_transactions;

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

---assignment 7----

SELECT id,name,website
FROM accounts
where name ILIKE 'citi%';

SELECT id,name,primary_poc
FROM accounts
WHERE primary_poc ILIKE '_her%';

----Assignment 8-----

SELECT id,drinks_qty
FROM orders
WHERE drinks_qty IN (1,3)
ORDER BY drinks_qty;

SELECT account_id,total
FROM orders
WHERE account_id in (3011, 2401, 2061 )
ORDER BY total DESC;