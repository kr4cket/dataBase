CREATE OR REPLACE FUNCTION log_register_course()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO logs (message) VALUES ('user registered to course');
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER registration_log
    AFTER INSERT ON course_students
    FOR EACH ROW
    EXECUTE FUNCTION log_register_course();

INSERT INTO course_students (course_id, student_id) VALUES (1, 15);