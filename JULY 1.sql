SET SEARCH_PATH TO SALES_TRANSACTIONS;

-----CAST FUNCTION---
---IT IS USED TO CHANGE DATA TYPES---
SELECT CAST(SUM(total_usd)AS Money)
FROM orders;-----total_usd has been change to data type money----

---TO_CHAR---

SELECT TO_CHAR(SUM(total),'9,999,999D99')
FROM orders;

---TASK 19---
SELECT r.name AS region,COUNT(s.id) AS number_sales_rep
FROM region r
JOIN sales_reps s
ON r.id=s.region_id
GROUP BY 1
ORDER BY 2;

SELECT r.name as region_name, w.channel,COUNT(w.channel) AS occurances
FROM region r 
JOIN sales_reps s
ON r.id=s.region_id
JOIN accounts a
ON a.sales_rep_id=s.id
JOIN web_events w
ON W.account_id=a.id
GROUP BY 1,2
ORDER BY 1 ASC,3 DESC

-----TASK 20----
SELECT s.name AS sales_repname, COUNT(a.id) AS no_accounts
FROM sales_reps s
JOIN accounts a
ON s.id=a.sales_rep_id
GROUP BY 1
having COUNT(a.id) > 5
ORDER BY 2;

SELECT a.name AS account_name,w.channel, COUNT(w.channel) AS number_times
FROM web_events w
JOIN accounts a
ON a.id=w.account_id
WHERE channel ='facebook'
GROUP BY 1,2
HAVING COUNT(w.channel) >6
ORDER BY 3 ASC


------CASE FUNCTION--------
SELECT id,total,
    case
     when total > 0
	     and total <= 100 then 'low'
	 when total	> 100
	     and total <= 150 then 'average'
	when total > 150 then 'affluent' 
	end category-------table alias
	from orders
	order by id;
	
	
	
	-----AGGREGATE CASE QURIES------
	
SELECT
	  SUM(CASE
		  WHEN drinks_usd =40 THEN 1
		  ELSE 0	
		  ENd)AS firstclass,
	  SUM(CASE
		 WHEN drinks_usd=80 THEN 1
		 ELSE 0
		 END
		 )AS economy,
	 SUM(CASE
		WHEN drinks_usd=100 THEN 1
		ELSE 0
		END
		)AS premium
		FROM orders
	
		 

	-----excercise----
	
SELECT sales_reps.id,total_usd,
	CASE
		WHEN total_usd <200000 THEN 'low_level'
		WHEN total_usd BETWEEN 200000 AND 500000 THEN 'mid_level'
		WHEN total_usd > 500000 THEN 'high_level'
	END AS sales_rep_category
FROM sales_reps
JOIN accounts
ON sales_reps.id=accounts.sales_rep_id
JOIN orders
ON accountS.id=orders.account_id
ORDER BY 2 DESC

CREATE VIEW web_category AS
SELECT id, channel,
CASE
  WHEN CHANNEL IN ('twitter','facebook') then 'social_media'
  WHEN CHANNEL IN ('adwords','organic','banner','direct') then 'orders'
END AS Channel_group
from web_events;

SELECT
 SUM(CASE Channel_group
	 WHEN 'social_media' THEN 1
	 ELSE 0
	 end
	)as sum_social_media,
 SUM(CASE Channel_group
	WHEN 'orders' THEN 1
	ELSE 0
	end
	) as sum_other
FROM web_category

	  
	     
	
		 


											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  
											  



