SET SEARCH_PATH TO SALES_TRANSACTIONS;

SELECT a.name,CAST(sum(o.total_usd) as MONEY)
FROM accounts a
Join orders o
on a.id=o.account_id
group by 1
Having sum(o.total_usd) < 1000
order by 2 desc