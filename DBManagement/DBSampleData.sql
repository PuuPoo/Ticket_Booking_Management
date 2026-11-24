-- Dummy data for the MySQL schema 



-- ScreenType
insert into Screen_Type (screenTypeID, theatreScreenName, priceMultiplier) values
    (1,     'Standard',     1.00),
    (2,     'IMAX',         1.50),
    (3,     '4DX',          1.25),
    (4,     'SATIN',        1.80);





-- Theatre
insert into Theatre (theatreID, theatreName, address, openTime, closeTime) values
    (1,     'CGV',                  'Central Park Mall',                '10:00:00', '23:30:00'),
    (2,     'CGV',                  'Grand Indonesia Mall',             '10:00:00', '23:00:00'),
    (3,     'XXI',                  'Lippo Mall Puri',                  '10:00:00', '00:00:00');



-- Studio
insert into Studio (studioID, theatreID, screenTypeID, seatCapacity) values
    (1,     1,      1,      120),
    (2,     1,      2,      200),
    (3,     2,      3,      90),
    (4,     2,      1,      80),
    (5,     3,      1,      100),
    (6,     3,      4,      40);




-- Movie
insert into movie (movieID, title, genre, duration, rating, basePrice) values
    (1,     'Parasite',      'Thriller',        '02:12:00',     'R',        6.00),
    (2,     'Forrest Gump',  'Drama',           '02:22:00',     'PG-13',    7.50),
    (3,     'Interstellar',  'Sci-Fi',          '02:49:00',     'PG-13',    8.00),
    (4,     'Home Alone',    'Comedy',          '01:43:00',     'PG',       7.50),
    (5,     'Get Out',       'Horror',          '01:44:00',     'R',        6.50),
    (6,     'Toy Story',     'Animation',       '01:21:00',     'G',        8.50);




-- Showtime
insert into Showtime (showtimeID, movieID, studioID, startTime, endTime) values
    (1,     1,      1,      '2026-11-28 18:00:00',      '2026-11-28 20:12:00'),
    (2,     3,      2,      '2026-11-28 19:00:00',      '2026-11-28 21:49:00'),
    (3,     4,      3,      '2026-11-28 20:00:00',      '2026-11-28 21:43:00'),
    (4,     6,      4,      '2026-11-29 14:00:00',      '2026-11-29 15:21:00'),
    (5,     5,      5,      '2026-11-29 21:00:00',      '2026-11-29 22:44:00'),
    (6,     2,      6,      '2026-11-29 17:30:00',      '2026-11-29 19:52:00'),
    (7,     3,      2,      '2026-11-30 20:00:00',      '2026-11-30 22:49:00'),
    (8,     1,      1,      '2026-11-30 16:00:00',      '2026-11-30 18:12:00');





-- Customer
insert into Customer (customerID, customerName, email) values 
    (1,         'Alice Johnson',        'alice.johnson@gmail.com'),
    (2,         'Ben Carter',           'ben.carter@gmail.com'),
    (3,         'Chloe Nguyen',         'chloe.nguyen@gmail.com'),
    (4,         'Daniel Smith',         'daniel.smith@gmail.com'),
    (5,         'Emma Wilson',          'emma.wilson@gmail.com'),
    (6,         'Farid Rahman',         'farid.rahman@gmail.com'),
    (7,         'Grace Lee',            'grace.lee@gmail.com'),
    (8,         'Henry Brown',          'henry.brown@gmail.com');




-- Ticket
insert into Ticket (ticketID, customerID, showtimeID, seatNumber) values
    (1,     1,      1,      'A1'),
    (2,     1,      1,      'A2'),
    (3,     2,      2,      'F10'),
    (4,     3,      2,      'F11'),
    (5,     3,      3,      'C5'),
    (6,     4,      4,      'B3'),
    (7,     5,      4,      'B4'),
    (8,     5,      4,      'B5'),
    (9,     6,      5,      'D7'),
    (10,    7,      6,      'V2'),
    (11,    7,      6,      'V3'),
    (12,    8,      7,      'H12'),
    (13,    2,      8,      'E6'),
    (14,    4,      1,      'A3'),
    (15,    6,      3,      'C6');




-- Concession_Type
insert into Concession_Type (concessionTypeID, concessionName, price) values
    (1,     'Small Popcorn',        5.50),
    (2,     'Large Popcorn',        7.50),
    (3,     'Soft Drink',           4.50),
    (4,     'Nachos',               6.00),
    (5,     'Candy',                3.50),
    (6,     'Hot Dog',              6.50);





-- Concession_Purchase
insert into Concession_Purchase (concessionPurchaseID, ticketID, concessionTypeID, quantity) values
    (1,     1,      2,      1),
    (2,     1,      3,      2),
    (3,     3,      2,      1),
    (4,     4,      1,      1),
    (5,     5,      4,      1),
    (6,     6,      5,      2),
    (7,     9,      3,      1),
    (8,     10,     2,      2),
    (9,     12,     6,      1),
    (10,    13,     1,      1);




-- Payment 
insert into Payment (paymentID, ticketID, price, paymentMethod, paymentStatus, paidAt, createdAt, updatedAt) values
    (1,     1,      28.50,      'Credit Card',      'Completed',    '2026-11-20 10:15:00',      '2026-11-20 10:14:00',      '2026-11-20 10:15:00'),
    (2,     2,      12.00,      'Credit Card',      'Completed',    '2026-11-20 10:15:00',      '2026-11-20 10:14:00',      '2026-11-20 10:15:00'),
    (3,     3,      27.00,      'QRIS',             'Completed',    '2026-11-21 14:30:00',      '2026-11-21 14:29:00',      '2026-11-21 14:30:00'),
    (4,     4,      25.00,      'Debit Card',       'Completed',    '2026-11-21 18:05:00',      '2026-11-21 18:04:00',      '2026-11-21 18:05:00'),
    (5,     5,      19.13,      'Debit Card',       'Completed',    '2026-11-22 09:45:00',      '2026-11-22 09:44:00',      '2026-11-22 09:45:00'),
    (6,     6,      16.50,      'Cash',             'Completed',    '2026-11-22 12:20:00',      '2026-11-22 12:20:00',      '2026-11-22 12:20:00'),
    (7,     7,      9.50,       'Cash',             'Completed',    '2026-11-22 12:20:00',      '2026-11-22 12:20:00',      '2026-11-22 12:20:00'),
    (8,     8,      9.50,       'Credit Card',      'Pending',      null,                       '2026-11-24 08:00:00',      '2026-11-24 08:00:00'),
    (9,     9,      17.00,      'QRIS',             'Completed',    '2026-11-23 16:10:00',      '2026-11-23 16:09:00',      '2026-11-23 16:10:00'),
    (10,    10,     35.70,      'Credit Card',      'Completed',    '2026-11-23 19:55:00',      '2026-11-23 19:54:00',      '2026-11-23 19:55:00'),
    (11,    11,     20.70,      'Credit Card',      'Completed',    '2026-11-23 19:55:00',      '2026-11-23 19:54:00',      '2026-11-23 19:55:00'),
    (12,    12,     26.00,      'Debit Card',       'Completed',    '2026-11-24 09:30:00',      '2026-11-24 09:29:00',      '2026-11-24 09:30:00'),
    (13,    13,     17.50,      'QRIS',             'Completed',    '2026-11-24 11:05:00',      '2026-11-24 11:04:00',      '2026-11-24 11:05:00'),
    (14,    14,     12.00,      'Cash',             'Completed',    '2026-11-24 13:40:00',      '2026-11-24 13:40:00',      '2026-11-24 13:40:00'),
    (15,    15,     13.13,      'Debit Card',       'Refunded',     '2026-11-22 17:00:00',      '2026-11-22 16:59:00',      '2026-11-23 10:00:00');