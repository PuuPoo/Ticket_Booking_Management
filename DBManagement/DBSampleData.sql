-- Dummy data for the MySQL schema 



-- ScreenType
insert into Screen_Type (theatreScreenName, priceMultiplier) values
    ('Standard',     1.00),
    ('IMAX',         1.50),
    ('4DX',          1.25),
    ('SATIN',        1.80);





-- Theatre
insert into Theatre (theatreName, address, openTime, closeTime) values
    ('CGV',                  'Central Park Mall',                '10:00:00', '23:30:00'),
    ('CGV',                  'Grand Indonesia Mall',             '10:00:00', '23:00:00'),
    ('XXI',                  'Lippo Mall Puri',                  '10:00:00', '00:00:00');



-- Studio
insert into Studio (theatreID, screenTypeID, seatCapacity) values
    (1,      1,      120),
    (1,      2,      200),
    (2,      3,      90),
    (2,      1,      80),
    (3,      1,      100),
    (3,      4,      40);




-- Movie
insert into movie (title, genre, duration, rating, basePrice) values
    ('Parasite',      'Thriller',        '02:12:00',     'R',        6.00),
    ('Forrest Gump',  'Drama',           '02:22:00',     'PG-13',    7.50),
    ('Interstellar',  'Sci-Fi',          '02:49:00',     'PG-13',    8.00),
    ('Home Alone',    'Comedy',          '01:43:00',     'PG',       7.50),
    ('Get Out',       'Horror',          '01:44:00',     'R',        6.50),
    ('Toy Story',     'Animation',       '01:21:00',     'G',        8.50);




-- Showtime
insert into Showtime (movieID, studioID, startTime, endTime) values
    (1,      1,      '2026-11-28 18:00:00',      '2026-11-28 20:12:00'),
    (3,      2,      '2026-11-28 19:00:00',      '2026-11-28 21:49:00'),
    (4,      3,      '2026-11-28 20:00:00',      '2026-11-28 21:43:00'),
    (6,      4,      '2026-11-29 14:00:00',      '2026-11-29 15:21:00'),
    (5,      5,      '2026-11-29 21:00:00',      '2026-11-29 22:44:00'),
    (2,      6,      '2026-11-29 17:30:00',      '2026-11-29 19:52:00'),
    (3,      2,      '2026-11-30 20:00:00',      '2026-11-30 22:49:00'),
    (1,      1,      '2026-11-30 16:00:00',      '2026-11-30 18:12:00');





-- Customer
insert into Customer (customerName, email) values 
    ('Alice Johnson',        'alice.johnson@gmail.com'),
    ('Ben Carter',           'ben.carter@gmail.com'),
    ('Chloe Nguyen',         'chloe.nguyen@gmail.com'),
    ('Daniel Smith',         'daniel.smith@gmail.com'),
    ('Emma Wilson',          'emma.wilson@gmail.com'),
    ('Farid Rahman',         'farid.rahman@gmail.com'),
    ('Grace Lee',            'grace.lee@gmail.com'),
    ('Henry Brown',          'henry.brown@gmail.com');




-- Ticket
insert into Ticket (customerID, showtimeID, seatNumber) values
    (1,      1,      'A1'),
    (1,      1,      'A2'),
    (2,      2,      'F10'),
    (3,      2,      'F11'),
    (3,      3,      'C5'),
    (4,      4,      'B3'),
    (5,      4,      'B4'),
    (5,      4,      'B5'),
    (6,      5,      'D7'),
    (7,      6,      'V2'),
    (7,      6,      'V3'),
    (8,      7,      'H12'),
    (2,      8,      'E6'),
    (4,      1,      'A3'),
    (6,      3,      'C6');




-- Concession_Type
insert into Concession_Type (concessionName, price) values
    ('Small Popcorn',        5.50),
    ('Large Popcorn',        7.50),
    ('Soft Drink',           4.50),
    ('Nachos',               6.00),
    ('Candy',                3.50),
    ('Hot Dog',              6.50);





-- Concession_Purchase
insert into Concession_Purchase (ticketID, concessionTypeID, quantity) values
    (1,      2,      1),
    (1,      3,      2),
    (3,      2,      1),
    (4,      1,      1),
    (5,      4,      1),
    (6,      5,      2),
    (9,      3,      1),
    (10,     2,      2),
    (12,     6,      1),
    (13,     1,      1);




-- Payment 
insert into Payment (ticketID, price, paymentMethod, paymentStatus, paidAt, createdAt, updatedAt) values
    (1,      28.50,      'Credit Card',      'Completed',    '2026-11-20 10:15:00',      '2026-11-20 10:14:00',      '2026-11-20 10:15:00'),
    (2,      12.00,      'Credit Card',      'Completed',    '2026-11-20 10:15:00',      '2026-11-20 10:14:00',      '2026-11-20 10:15:00'),
    (3,      27.00,      'QRIS',             'Completed',    '2026-11-21 14:30:00',      '2026-11-21 14:29:00',      '2026-11-21 14:30:00'),
    (4,      25.00,      'Debit Card',       'Completed',    '2026-11-21 18:05:00',      '2026-11-21 18:04:00',      '2026-11-21 18:05:00'),
    (5,      19.13,      'Debit Card',       'Completed',    '2026-11-22 09:45:00',      '2026-11-22 09:44:00',      '2026-11-22 09:45:00'),
    (6,      16.50,      'Cash',             'Completed',    '2026-11-22 12:20:00',      '2026-11-22 12:20:00',      '2026-11-22 12:20:00'),
    (7,      9.50,       'Cash',             'Completed',    '2026-11-22 12:20:00',      '2026-11-22 12:20:00',      '2026-11-22 12:20:00'),
    (8,      9.50,       'Credit Card',      'Pending',      null,                       '2026-11-24 08:00:00',      '2026-11-24 08:00:00'),
    (9,      17.00,      'QRIS',             'Completed',    '2026-11-23 16:10:00',      '2026-11-23 16:09:00',      '2026-11-23 16:10:00'),
    (10,     35.70,      'Credit Card',      'Completed',    '2026-11-23 19:55:00',      '2026-11-23 19:54:00',      '2026-11-23 19:55:00'),
    (11,     20.70,      'Credit Card',      'Completed',    '2026-11-23 19:55:00',      '2026-11-23 19:54:00',      '2026-11-23 19:55:00'),
    (12,     26.00,      'Debit Card',       'Completed',    '2026-11-24 09:30:00',      '2026-11-24 09:29:00',      '2026-11-24 09:30:00'),
    (13,     17.50,      'QRIS',             'Completed',    '2026-11-24 11:05:00',      '2026-11-24 11:04:00',      '2026-11-24 11:05:00'),
    (14,     12.00,      'Cash',             'Completed',    '2026-11-24 13:40:00',      '2026-11-24 13:40:00',      '2026-11-24 13:40:00'),
    (15,     13.13,      'Debit Card',       'Refunded',     '2026-11-22 17:00:00',      '2026-11-22 16:59:00',      '2026-11-23 10:00:00');








-- Adding coding format
update Screen_Type         set screenCode             = concat('ST',   lpad(screenTypeID, 4, '0'))         where screenCode is null;
update Theatre             set theatreCode            = concat('T',    lpad(theatreID, 4, '0'))            where theatreCode is null;
update Studio              set studioCode             = concat('S',    lpad(studioID, 4, '0'))             where studioCode is null;
update Movie               set movieCode              = concat('M',    lpad(movieID, 4, '0'))              where movieCode is null;
update Showtime            set showtimeCode           = concat('SHOW', lpad(showtimeID, 4, '0'))           where showtimeCode is null;
update Customer            set customerCode           = concat('C',    lpad(customerID, 4, '0'))           where customerCode is null;
update Ticket              set ticketCode             = concat('TIX',  lpad(ticketID, 4, '0'))             where ticketCode is null;
update Concession_Type     set concessionTypeCode     = concat('CT',   lpad(concessionTypeID, 4, '0'))     where concessionTypeCode is null;
update Concession_Purchase set concessionPurchaseCode = concat('CP',   lpad(concessionPurchaseID, 4, '0')) where concessionPurchaseCode is null;
update Payment             set paymentCode            = concat('PAY',  lpad(paymentID, 4, '0'))            where paymentCode is null;