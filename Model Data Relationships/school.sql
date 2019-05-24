CREATE TABLE students( "id" INTEGER NOT NULL PRIMARY KEY, "first_name" TEXT, "last_name" TEXT, "phone" TEXT, "email" TEXT, "address" TEXT);


CREATE TABLE class( "id" INTEGER NOT NULL PRIMARY KEY, "room_number" INTEGER, "subject" TEXT);

CREATE TABLE schedule
( "student_id" INTEGER NOT NULL, "class_id" INTEGER NOT NULL, grade CHAR NOT NULL,
    CONSTRAINT schedule_student_id_fkey FOREIGN KEY (student_id)
    REFERENCES students (id),

    CONSTRAINT schedule_class_id_fkey FOREIGN KEY (class_id)
    REFERENCES class (id));

INSERT INTO students ("id", "first_name", "last_name", "phone", "email", "address") VALUES 
(1, 'Bob', 'Adams', '765-123-1234', 'testemail@bloc.io', '123 Mulberry St.'),
(2, 'Tom', 'Evans', '734-183-3254', 'tevans@bloc.io', '952 Main St.'),
(3, 'Adam', 'James', '950-164-3036', 'ajames@bloc.io', '602 8th St.'),
(4, 'John', 'Tucker', '765-775-9467', 'jtucker@bloc.io', '5010 Golding Road'),
(5, 'Sarah', 'Spalding', '765-935-2844', 'sspalding@bloc.io', '959 S. 4th Street'),
(6, 'Sally', 'Mills', '765-433-7255', 'smill@bloc.io', '65 Ironwood Ct.'),
(7, 'Samantha', 'Smith', '921-363-7921', 'ssmith@bloc.io', '103 5th Street');

INSERT INTO class ("id", "room_number", "subject") VALUES
(1, 100, 'math'),
(2, 101, 'english'),
(3, 102, 'geography'),
(4, 200, 'science'),
(5, 201, 'spanish'),
(6, 202, 'band'),
(7, 300, 'gym'),
(8, 301, 'choir'),
(9, 302, 'orchestra');

INSERT INTO schedule ( "student_id", "class_id", "grade" ) VALUES
(1, 1, 'A'), (1, 2, 'A'), (1, 3, 'C'), (1, 4, 'B'), (1, 5, 'D'),
(2, 1, 'A'), (2, 2, 'A'), (2, 3, 'C'), (2, 4, 'B'), (2, 5, 'D'),
(3, 1, 'A'), (3, 2, 'A'), (3, 3, 'C'), (3, 4, 'B'), (3, 6, 'D'),
(4, 1, 'A'), (4, 6, 'A'), (4, 3, 'C'), (4, 4, 'B'), (4, 6, 'D'),
(5, 5, 'A'), (5, 6, 'A'), (5, 7, 'C'), (5, 8, 'B'), (5, 9, 'D'),
(6, 5, 'A'), (6, 6, 'A'), (6, 7, 'C'), (6, 8, 'B'), (6, 9, 'D'),
(7, 5, 'A'), (7, 6, 'A'), (7, 7, 'C'), (7, 8, 'B'), (7, 9, 'D');
