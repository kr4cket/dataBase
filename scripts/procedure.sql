CREATE PROCEDURE notify_students()
LANGUAGE plpgsql AS $$
DECLARE
   rec   record;
BEGIN
   FOR rec IN
      SELECT *
      FROM courses
      JOIN course_students cs on courses.course_id = cs.course_id
      WHERE courses.completed is true
   LOOP
      INSERT INTO notifications VALUES (rec.student_id, now(), 'Course completed successfuly');
   END LOOP;
END
$$;

CALL notify_students();