-- Dummy data for the MySQL schema 




-- ScreenType
insert into Screen_Type (screenTypeID, theatreScreenName, priceMultiplier) values
    ('ST0001',   'Standard',     1.00),
    ('ST0002',   'IMAX',         1.50),
    ('ST0003',   '4DX',          1.25),
    ('ST0004',   'SATIN',        1.80);





-- Theatre
insert into Theatre (theatreID, theatreName, address, openTime, closeTime) values
    ('THEATRE0001',   'CGV',                  'Central Park Mall',                '10:00:00', '23:30:00'),
    ('THEATRE0002',   'CGV',                  'Grand Indonesia Mall',             '10:00:00', '23:00:00'),
    ('THEATRE0003',   'XXI',                  'Lippo Mall Puri',                  '10:00:00', '00:00:00');





-- Studio
insert into Studio (studioID, theatreID, screenTypeID, seatCapacity) values
    ('STUDIO0001',   'THEATRE0001',      'ST0001',      120),
    ('STUDIO0002',   'THEATRE0001',      'ST0002',      200),
    ('STUDIO0003',   'THEATRE0002',      'ST0003',       90),
    ('STUDIO0004',   'THEATRE0002',      'ST0001',       80),
    ('STUDIO0005',   'THEATRE0003',      'ST0001',      100),
    ('STUDIO0006',   'THEATRE0003',      'ST0004',       40);


-- Movie




insert into Movie (movieID, title, genre, duration, rating, basePrice) values
    ('MOVIE0001',   'Parasite',      'Thriller',        '02:12:00',     'R',        6.00),
    ('MOVIE0002',   'Forrest Gump',  'Drama',           '02:22:00',     'PG-13',    7.50),
    ('MOVIE0003',   'Interstellar',  'Sci-Fi',          '02:49:00',     'PG-13',    8.00),
    ('MOVIE0004',   'Home Alone',    'Comedy',          '01:43:00',     'PG',       7.50),
    ('MOVIE0005',   'Get Out',       'Horror',          '01:44:00',     'R',        6.50),
    ('MOVIE0006',   'Toy Story',     'Animation',       '01:21:00',     'G',        8.50);




-- Showtime
insert into Showtime (showtimeID, movieID, studioID, startTime, endTime) values
    ('SHOWTIME0001',   'MOVIE0001',      'STUDIO0001',      '2026-11-28 18:00:00',      '2026-11-28 20:12:00'),
    ('SHOWTIME0002',   'MOVIE0003',      'STUDIO0002',      '2026-11-28 19:00:00',      '2026-11-28 21:49:00'),
    ('SHOWTIME0003',   'MOVIE0004',      'STUDIO0003',      '2026-11-28 20:00:00',      '2026-11-28 21:43:00'),
    ('SHOWTIME0004',   'MOVIE0006',      'STUDIO0004',      '2026-11-29 14:00:00',      '2026-11-29 15:21:00'),
    ('SHOWTIME0005',   'MOVIE0005',      'STUDIO0005',      '2026-11-29 21:00:00',      '2026-11-29 22:44:00'),
    ('SHOWTIME0006',   'MOVIE0002',      'STUDIO0006',      '2026-11-29 17:30:00',      '2026-11-29 19:52:00'),
    ('SHOWTIME0007',   'MOVIE0003',      'STUDIO0002',      '2026-11-30 20:00:00',      '2026-11-30 22:49:00'),
    ('SHOWTIME0008',   'MOVIE0001',      'STUDIO0001',      '2026-11-30 16:00:00',      '2026-11-30 18:12:00');





-- Customer
insert into Customer (customerID, customerName, email) values 
    ('CUSTOMER0001',   'Alice Johnson',        'alice.johnson@gmail.com'),
    ('CUSTOMER0002',   'Ben Carter',           'ben.carter@gmail.com'),
    ('CUSTOMER0003',   'Chloe Nguyen',         'chloe.nguyen@gmail.com'),
    ('CUSTOMER0004',   'Daniel Smith',         'daniel.smith@gmail.com'),
    ('CUSTOMER0005',   'Emma Wilson',          'emma.wilson@gmail.com'),
    ('CUSTOMER0006',   'Farid Rahman',         'farid.rahman@gmail.com'),
    ('CUSTOMER0007',   'Grace Lee',            'grace.lee@gmail.com'),
    ('CUSTOMER0008',   'Henry Brown',          'henry.brown@gmail.com');





-- Ticket
insert into Ticket (ticketID, customerID, showtimeID, seatNumber) values
    ('TICKET0001',   'CUSTOMER0001',      'SHOWTIME0001',      'A1'),
    ('TICKET0002',   'CUSTOMER0001',      'SHOWTIME0001',      'A2'),
    ('TICKET0003',   'CUSTOMER0002',      'SHOWTIME0002',      'F10'),
    ('TICKET0004',   'CUSTOMER0003',      'SHOWTIME0002',      'F11'),
    ('TICKET0005',   'CUSTOMER0003',      'SHOWTIME0003',      'C5'),
    ('TICKET0006',   'CUSTOMER0004',      'SHOWTIME0004',      'B3'),
    ('TICKET0007',   'CUSTOMER0005',      'SHOWTIME0004',      'B4'),
    ('TICKET0008',   'CUSTOMER0005',      'SHOWTIME0004',      'B5'),
    ('TICKET0009',   'CUSTOMER0006',      'SHOWTIME0005',      'D7'),
    ('TICKET0010',   'CUSTOMER0007',      'SHOWTIME0006',      'V2'),
    ('TICKET0011',   'CUSTOMER0007',      'SHOWTIME0006',      'V3'),
    ('TICKET0012',   'CUSTOMER0008',      'SHOWTIME0007',      'H12'),
    ('TICKET0013',   'CUSTOMER0002',      'SHOWTIME0008',      'E6'),
    ('TICKET0014',   'CUSTOMER0004',      'SHOWTIME0001',      'A3'),
    ('TICKET0015',   'CUSTOMER0006',      'SHOWTIME0003',      'C6');





-- Concession_Type
insert into Concession_Type (concessionTypeID, concessionName, price) values
    ('CT0001',   'Small Popcorn',        5.50),
    ('CT0002',   'Large Popcorn',        7.50),
    ('CT0003',   'Soft Drink',           4.50),
    ('CT0004',   'Nachos',               6.00),
    ('CT0005',   'Candy',                3.50),
    ('CT0006',   'Hot Dog',              6.50);






-- Concession_Purchase
insert into Concession_Purchase (concessionPurchaseID, ticketID, concessionTypeID, quantity) values
    ('CP0001',   'TICKET0001',      'CT0002',      1),
    ('CP0002',   'TICKET0001',      'CT0003',      2),
    ('CP0003',   'TICKET0003',      'CT0002',      1),
    ('CP0004',   'TICKET0004',      'CT0001',      1),
    ('CP0005',   'TICKET0005',      'CT0004',      1),
    ('CP0006',   'TICKET0006',      'CT0005',      2),
    ('CP0007',   'TICKET0009',      'CT0003',      1),
    ('CP0008',   'TICKET0010',      'CT0002',      2),
    ('CP0009',   'TICKET0012',      'CT0006',      1),
    ('CP0010',   'TICKET0013',      'CT0001',      1);








-- Payment 
insert into Payment (paymentID, ticketID, price, paymentMethod, paymentStatus, paidAt, createdAt, updatedAt) values
    ('PAYMENT0001',   'TICKET0001',      28.50,      'Credit Card',      'Completed',    '2026-11-20 10:15:00',      '2026-11-20 10:14:00',      '2026-11-20 10:15:00'),
    ('PAYMENT0002',   'TICKET0002',      12.00,      'Credit Card',      'Completed',    '2026-11-20 10:15:00',      '2026-11-20 10:14:00',      '2026-11-20 10:15:00'),
    ('PAYMENT0003',   'TICKET0003',      27.00,      'QRIS',             'Completed',    '2026-11-21 14:30:00',      '2026-11-21 14:29:00',      '2026-11-21 14:30:00'),
    ('PAYMENT0004',   'TICKET0004',      25.00,      'Debit Card',       'Completed',    '2026-11-21 18:05:00',      '2026-11-21 18:04:00',      '2026-11-21 18:05:00'),
    ('PAYMENT0005',   'TICKET0005',      19.13,      'Debit Card',       'Completed',    '2026-11-22 09:45:00',      '2026-11-22 09:44:00',      '2026-11-22 09:45:00'),
    ('PAYMENT0006',   'TICKET0006',      16.50,      'Cash',             'Completed',    '2026-11-22 12:20:00',      '2026-11-22 12:20:00',      '2026-11-22 12:20:00'),
    ('PAYMENT0007',   'TICKET0007',       9.50,      'Cash',             'Completed',    '2026-11-22 12:20:00',      '2026-11-22 12:20:00',      '2026-11-22 12:20:00'),
    ('PAYMENT0008',   'TICKET0008',       9.50,      'Credit Card',      'Pending',      null,                       '2026-11-24 08:00:00',      '2026-11-24 08:00:00'),
    ('PAYMENT0009',   'TICKET0009',      17.00,      'QRIS',             'Completed',    '2026-11-23 16:10:00',      '2026-11-23 16:09:00',      '2026-11-23 16:10:00'),
    ('PAYMENT0010',   'TICKET0010',      35.70,      'Credit Card',      'Completed',    '2026-11-23 19:55:00',      '2026-11-23 19:54:00',      '2026-11-23 19:55:00'),
    ('PAYMENT0011',   'TICKET0011',      20.70,      'Credit Card',      'Completed',    '2026-11-23 19:55:00',      '2026-11-23 19:54:00',      '2026-11-23 19:55:00'),
    ('PAYMENT0012',   'TICKET0012',      26.00,      'Debit Card',       'Completed',    '2026-11-24 09:30:00',      '2026-11-24 09:29:00',      '2026-11-24 09:30:00'),
    ('PAYMENT0013',   'TICKET0013',      17.50,      'QRIS',             'Completed',    '2026-11-24 11:05:00',      '2026-11-24 11:04:00',      '2026-11-24 11:05:00'),
    ('PAYMENT0014',   'TICKET0014',      12.00,      'Cash',             'Completed',    '2026-11-24 13:40:00',      '2026-11-24 13:40:00',      '2026-11-24 13:40:00'),
    ('PAYMENT0015',   'TICKET0015',      13.13,      'Debit Card',       'Refunded',     '2026-11-22 17:00:00',      '2026-11-22 16:59:00',      '2026-11-23 10:00:00');
