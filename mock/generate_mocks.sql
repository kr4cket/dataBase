insert into users(user_id, name, role, email)
select generate_series
     , md5(random()::text)
     , 'student'
     , md5(random()::text) || '@gmail.com'
  from generate_series(1, 10000000);


insert into course_students(course_id, student_id)
select floor(random() * 7 + 1)::int, generate_series
from generate_series(41, 1000000);


