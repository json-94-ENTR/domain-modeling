-- Drops existing tables, so we start fresh with each
-- run of this script
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS sections;
DROP TABLE IF EXISTS enrollments;

CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);

-- Create the rest of the tables
CREATE TABLE courses (
  id INTEGER PRIMARY KEY  AUTOINCREMENT,
  name TEXT, 
  description TEXT
);

CREATE TABLE teachers (
  id INTEGER PRIMARY KEY  AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  bio TEXT
);

CREATE TABLE sections (
    id INTEGER PRIMARY KEY  AUTOINCREMENT,
    time TEXT, 
    course_id INTEGER,
    teacher_id INTEGER
);
--How does a student enroll in courses? We need to design the model
-- 1. What are the entities invovled? students, courses
CREATE TABLE enrollments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  section_id INTEGER,
  student_id INTEGER
);
