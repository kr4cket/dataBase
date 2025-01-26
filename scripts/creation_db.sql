CREATE TYPE user_role AS ENUM('student', 'teacher', 'admin');

CREATE TABLE Users (
  user_id INT PRIMARY KEY,
  name VARCHAR(100),
  role user_role,
  email VARCHAR(100)
);

CREATE TABLE Courses (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(100),
  teacher_id INT,
  completed boolean,
  FOREIGN KEY (teacher_id) REFERENCES Users(user_id)
);

CREATE TABLE Course_Students (
  course_id INT,
  student_id INT,
  PRIMARY KEY (course_id, student_id),
  FOREIGN KEY (course_id) REFERENCES Courses(course_id),
  FOREIGN KEY (student_id) REFERENCES Users(user_id)
);

CREATE TABLE Assignments (
  assignment_id INT PRIMARY KEY,
  course_id INT,
  title VARCHAR(100),
  due_date DATE,
  FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Grades (
  assignment_id INT,
  student_id INT,
  grade INT,
  PRIMARY KEY (assignment_id, student_id),
  FOREIGN KEY (assignment_id) REFERENCES Assignments(assignment_id),
  FOREIGN KEY (student_id) REFERENCES Users(user_id)
);

CREATE TABLE Notifications (
    student_id INT PRIMARY KEY,
    date DATE DEFAULT NOW(),
    message TEXT,
    FOREIGN KEY (student_id) REFERENCES Users(user_id)
);

CREATE TABLE Logs (
    id SERIAL PRIMARY KEY,
    date TIMESTAMP DEFAULT NOW(),
    message TEXT
);

