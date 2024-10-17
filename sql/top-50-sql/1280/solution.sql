select stu.student_id,
    stu.student_name,
    sub.subject_name,
    count(exa.subject_name) as attended_exams
from Students stu
    cross join Subjects sub
    left join Examinations exa on stu.student_id = exa.student_id
    and sub.subject_name = exa.subject_name
group by stu.student_id,
    stu.student_name,
    sub.subject_name
order by stu.student_id,
    sub.subject_name;