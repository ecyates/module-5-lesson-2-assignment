CREATE DATABASE fitness_center_db;

CREATE TABLE Members(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions(
    session_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT NOT NULL,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

-- Task 1: SQL Data Insertion

INSERT INTO Members(name, age)
VAlUES 
('Abigail Adams', 25),
('Brian Bently', 30),
('Cameron Carlson', 22),
('David Davidson', 45),
('Jane Doe', 36),
('Elizabeth Erickson', 33),
('Flora Fauna', 40),
('Geoffrey Gregory', 20);

INSERT INTO WorkoutSessions(member_id, session_date, session_time, activity)
VALUES
(2, '2024-10-01', '8:00AM', 'Cardio'),
(3, '2024-10-02', '10:00AM', 'Yoga'),
(4, '2024-10-01', '8:00AM', 'Cardio'),
(6, '2024-10-03', '9:00AM', 'Pilates'),
(2, '2024-10-01', '4:00PM', 'CrossFit'),
(1, '2024-10-02', '2:00PM', 'Cardio'),
(3, '2024-10-03', '9:00AM', 'Pilates'),
(7, '2024-10-01', '10:00AM', 'Yoga'),
(2, '2024-10-02', '12:00PM', 'Cardio'),
(3, '2024-10-04', '3:00PM', 'CrossFit'),
(1, '2024-10-01', '8:00AM', 'Cardio');

SELECT * FROM Members;
SELECT * FROM WorkoutSessions;

-- Task 2: SQL Data Update

UPDATE WorkoutSessions
SET session_time = '3:00PM'
WHERE member_id = 4;

-- Task 3: SQL Data Deletion

DELETE FROM WorkoutSessions
WHERE member_id = 4;

DELETE FROM Members
WHERE id = 4;