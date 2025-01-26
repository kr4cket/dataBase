EXPLAIN SELECT * FROM users ORDER BY users.name;
CREATE INDEX ix_name ON users(name);
EXPLAIN SELECT * FROM users ORDER BY users.name;

CREATE INDEX ix_course_name ON courses(course_name);