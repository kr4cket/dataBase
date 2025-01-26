SELECT * FROM users WHERE name LIKE 'ffff%' GROUP BY users.name,user_id ORDER BY name;

CREATE INDEX ON users(name);
CREATE INDEX ON users(name, user_id);

SELECT * FROM users WHERE name LIKE 'ffff%' GROUP BY users.name,user_id ORDER BY name;