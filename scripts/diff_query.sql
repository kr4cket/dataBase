SELECT * FROM courses
JOIN course_students cs on courses.course_id = cs.course_id
JOIN public.users u on u.user_id = cs.student_id
WHERE u.name LIKE 'ff%' and courses.completed is false and email LIKE 'c1%om' and role = 'student'
ORDER BY courses.course_name;