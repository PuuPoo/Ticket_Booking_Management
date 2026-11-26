-- MYSQL DATABASE DATA TABLES SCHEMA

create table Screen_Type(
    screenTypeID        varchar(20) primary key,
    theatreScreenName   varchar(100) not null unique,
    priceMultiplier     decimal(3, 2) not null,


    -- Checks if the format of the ID follows the format of (ST{4 digit number of 0-9})
    constraint Check_Screen_Type_ID_Format
        check (screenTypeID regexp '^ST[0-9]{4}$')
);





-- ------------------------------------------------------------------------------------------------------------------------------------------------------





create table Theatre(
    theatreID           varchar(20) primary key,
    theatreName         varchar(100) not null,
    address             varchar(255) not null unique,
    openTime            time not null, 
    closeTime           time not null,



    constraint Check_Theatre_ID_Format
        check (theatreID regexp '^THEATRE[0-9]{4}$')

);




-- ------------------------------------------------------------------------------------------------------------------------------------------------------





create table Studio(
    studioID            varchar(20) primary key,
    theatreID           varchar(20) not null,
    screenTypeID        varchar(20) not null,
    seatCapacity        int not null,



    constraint Check_Studio_ID_Format
        check (studioID regexp '^STUDIO[0-9]{4}$'),


    constraint FK_Studio_Theatre 
        foreign key (theatreID) references Theatre(theatreID),

    constraint FK_Studio_Screen_Type
        foreign key (screenTypeID) references Screen_Type(screenTypeID)
    
);




-- ------------------------------------------------------------------------------------------------------------------------------------------------------






create table Movie(
    movieID             varchar(20) primary key,
    title               varchar(100) not null,
    genre               varchar(100) not null,
    duration            time not null,
    rating              varchar(20) not null,
    basePrice           decimal(8, 2) not null,


    constraint Check_Movie_ID_Format
        check (movieID regexp '^MOVIE[0-9]{4}$')

);



-- ------------------------------------------------------------------------------------------------------------------------------------------------------




create table Showtime(
    showtimeID          varchar(20) primary key,
    movieID             varchar(20) not null,
    studioID            varchar(20) not null,
    startTime           datetime not null,
    endTime             datetime not null,



    constraint Check_Showtime_ID_Format
        check (showtimeID regexp '^SHOWTIME[0-9]{4}$'),


    constraint FK_Showtime_MovieID
        foreign key (movieID) references Movie(movieID),

    constraint FK_Showtime_Studio_ID
        foreign key (studioID) references Studio(studioID)
);





-- ------------------------------------------------------------------------------------------------------------------------------------------------------






create table Customer(
    customerID          varchar(20) primary key,
    customerName        varchar(255) not null,
    email               varchar(255) not null unique,


    constraint Check_Customer_ID_Format
        check (customerID regexp '^CUSTOMER[0-9]{4}$')
);



-- ------------------------------------------------------------------------------------------------------------------------------------------------------





create table Ticket(
    ticketID            varchar(20) primary key,
    customerID          varchar(20) not null,
    showtimeID          varchar(20) not null,
    seatNumber          varchar(255) not null,



    constraint Check_Ticket_ID_Format
        check (ticketID regexp '^TICKET[0-9]{4}$'),

    constraint FK_Ticket_CustomerID
        foreign key (customerID) references Customer(customerID),


    constraint FK_Ticket_Showtime_ID
        foreign key (showtimeID) references Showtime(showtimeID),

    constraint Unique_Ticket_Seat
        unique (showtimeID, seatNumber)
);




-- ------------------------------------------------------------------------------------------------------------------------------------------------------




create table Concession_Type(
    concessionTypeID            varchar(20) primary key,
    concessionName              varchar(255) not null unique,
    price                       decimal(8, 2) not null,




    constraint Check_Concession_Type_ID_Format
        check (concessionTypeID regexp '^CT[0-9]{4}$')
);



-- ------------------------------------------------------------------------------------------------------------------------------------------------------





create table Concession_Purchase(
    concessionPurchaseID            varchar(20) primary key,
    ticketID                        varchar(20) not null,
    concessionTypeID                varchar(20) not null,
    quantity                        int not null, 



    
    constraint Check_Concession_Purchase_ID_Format
        check (concessionPurchaseID regexp '^CP[0-9]{4}$'),

    constraint FK_Concession_Purchase_TicketID
        foreign key (ticketID) references Ticket(ticketID),

    
    constraint FK_Concession_Purchase_Concession_Type_ID
        foreign key (concessionTypeID) references Concession_Type(concessionTypeID)
);



-- ------------------------------------------------------------------------------------------------------------------------------------------------------





create table Payment(
    paymentID             varchar(20) primary key,
    ticketID              varchar(20) not null,
    price                 decimal(8, 2) not null,
    paymentMethod         varchar(255) not null,
    paymentStatus         varchar(255) not null,
    paidAt                datetime null,
    createdAt             datetime not null default current_timestamp,
    updatedAt             datetime not null default current_timestamp on update current_timestamp,




    constraint Check_Payment_ID_Format
        check (paymentID regexp '^PAYMENT[0-9]{4}$'),

    constraint FK_Payment_TicketID
        foreign key (ticketID) references Ticket(ticketID)
);