SET SEARCH_PATH TO sales_transactions;

-----DATE TRUNC FXN-----
SELECT DATE_TRUNC('month',occurred_at),COUNT(channel) AS channel
FROM web_events
GROUP BY 1
ORDER BY 1

SELECT DATE_TRUNC('year',occurred_at),SUM(total_usd)
FROM orders
GROUP BY 1


------DATE PART FXN-----
SELECT DATE_PART('month',occurred_at) AS transaction_month, DATE_PART('year',occurred_at) AS transaction_year, TO_CHAR (SUM(total),'999,999')AS quantity_sold
 FROM orders
 GROUP BY 1,2
 ORDER BY 1

SELECT DATE_PART('dow',occurred_at) AS date_week,TO_CHAR(sum(total_usd),'9,999,999')AS amount_sold
FROM orders
GROUP BY 1
ORDER by 1 DESC

