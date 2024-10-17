SELECT stu.student_id
	,stu.student_name
	,sub.subject_name
	,count(exa.subject_name) AS attended_exams
FROM Students stu
CROSS JOIN Subjects sub
LEFT JOIN Examinations exa ON stu.student_id = exa.student_id
	AND sub.subject_name = exa.subject_name
GROUP BY stu.student_id
	,stu.student_name
	,sub.subject_name
ORDER BY stu.student_id
	,sub.subject_name;
