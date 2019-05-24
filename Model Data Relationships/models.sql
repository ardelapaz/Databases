CREATE TABLE guest( "id" INTEGER NOT NULL PRIMARY KEY, "first_name" TEXT, "last_name" TEXT, "phone" TEXT, "email" TEXT, "address" TEXT);

CREATE TABLE rooms( "id" INTEGER NOT NULL PRIMARY KEY, "room_number" INTEGER, "floor_number" INTEGER, "price" INTEGER);

CREATE TABLE booking
    ( "booking_id" INTEGER NOT NULL PRIMARY KEY, 
        "guest_id" INTEGER NOT NULL,
        "room_id" INTEGER NOT NULL,

        CONSTRAINT booking_guest_id_fkey FOREIGN KEY (guest_id)
        REFERENCES guest (id),

        CONSTRAINT booking_room_id_fkey FOREIGN KEY (room_id)
        REFERENCES rooms (id),

    "check_in_date" DATE, "check_out_date" DATE);

INSERT INTO guest ("id", "first_name", "last_name", "phone", "email", "address") VALUES 
(1, 'Bob', 'Adams', '765-123-1234', 'testemail@bloc.io', '123 Mulberry St.'),
(2, 'Tom', 'Evans', '734-183-3254', 'tevans@bloc.io', '952 Main St.'),
(3, 'Adam', 'James', '950-164-3036', 'ajames@bloc.io', '602 8th St.'),
(4, 'John', 'Tucker', '765-775-9467', 'jtucker@bloc.io', '5010 Golding Road'),
(5, 'Sarah', 'Spalding', '765-935-2844', 'sspalding@bloc.io', '959 S. 4th Street'),
(6, 'Sally', 'Mills', '765-433-7255', 'smill@bloc.io', '65 Ironwood Ct.'),
(7, 'Samantha', 'Smith', '921-363-7921', 'ssmith@bloc.io', '103 5th Street');

INSERT INTO rooms ("id", "room_number", "floor_number", "price") VALUES
(1, 100, 1, 100),
(2, 101, 1, 100),
(3, 102, 1, 100),
(4, 200, 2, 200),
(5, 201, 2, 200),
(6, 202, 2, 200),
(7, 300, 3, 300),
(8, 301, 3, 300),
(9, 302, 3, 300);

INSERT INTO booking ("booking_id", "guest_id", "room_id", "check_in_date", "check_out_date") VALUES
(1, 1, 1, CURRENT_DATE + INTERVAL '1 DAYS' , CURRENT_DATE + INTERVAL '1 DAYS'),
(2, 4, 1, CURRENT_DATE + INTERVAL '2 DAYS', CURRENT_DATE + INTERVAL '2 DAYS'),
(3, 3, 1, CURRENT_DATE + INTERVAL '3 DAYS', CURRENT_DATE + INTERVAL '3 DAYS'),
(4, 6, 1, CURRENT_DATE + INTERVAL '4 DAYS', CURRENT_DATE + INTERVAL '4 DAYS'),
(5, 5, 1, CURRENT_DATE + INTERVAL '5 DAYS', CURRENT_DATE + INTERVAL '5 DAYS'),
(6, 2, 1, CURRENT_DATE + INTERVAL '6 DAYS', CURRENT_DATE + INTERVAL '6 DAYS'),
(7, 2, 1, CURRENT_DATE + INTERVAL '6 DAYS', CURRENT_DATE + INTERVAL '6 DAYS');


