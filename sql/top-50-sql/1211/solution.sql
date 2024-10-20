/*
* Explainition
* ============
*
* ROUND(AVG(q.rating::numeric / q.position), 2) AS quality
* AVG() func calculate average of a given value. We rounded it by 2 decimal places with ROUND() func
*
* ROUND(SUM((q.rating < 3)::int)::numeric / COUNT(q.query_name) * 100, 2) AS poor_query_percentage
* (q.rating < 3)::int returns false/true list, and casts each of them in int with ::int
& then SUM() is used to add up the casted values, and divide them with total count of the rating
*/

SELECT q.query_name,
        ROUND(AVG(q.rating::numeric / q.position), 2) AS quality,
        ROUND(SUM((q.rating < 3)::int)::numeric / COUNT(q.rating) * 100, 2) AS poor_query_percentage
FROM Queries q
WHERE q.query_name IS NOT NULL
GROUP BY q.query_name;
