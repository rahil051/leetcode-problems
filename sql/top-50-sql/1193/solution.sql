SELECT TO_CHAR(t.trans_date::DATE,
		 'YYYY-MM') AS month ,t.country AS country ,count(t.id) AS trans_count ,count(CASE
	WHEN t.STATE = 'approved' THEN
	1
	ELSE NULL END) FILTER(WHERE t.STATE IS NOT NULL) AS approved_count ,sum(t.amount) AS trans_total_amount ,sum(CASE
	WHEN t.STATE = 'approved' THEN
	t.amount
	ELSE 0 END) AS approved_total_amount
FROM Transactions t
GROUP BY  TO_CHAR(t.trans_date::DATE, 'YYYY-MM') ,t.country;
