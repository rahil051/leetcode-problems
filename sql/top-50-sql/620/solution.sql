SELECT *
FROM Cinema c
WHERE c.id % 2 = 1
	AND c.description NOT LIKE '%boring%'
ORDER BY c.rating DESC;
