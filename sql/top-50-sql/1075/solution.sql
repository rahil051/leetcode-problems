SELECT p.project_id
	,coalesce(ROUND(SUM(e.experience_years) / COUNT(e.employee_id)::DECIMAL, 2), 0) AS average_years
FROM Project p
JOIN Employee e ON p.employee_id = e.employee_id
GROUP BY p.project_id
ORDER BY p.project_id ASC;
