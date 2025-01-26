SELECT COUNT(u.*), MAX(user_id), MIN(user_id), course_name FROM courses
JOIN course_students cs on courses.course_id = cs.course_id
JOIN public.users u on u.user_id = cs.student_id
WHERE u.name NOT LIKE 'f%' and courses.completed is false GROUP BY course_name;