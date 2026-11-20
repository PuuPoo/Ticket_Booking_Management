-- MYSQL DATABASE DATA TABLES SCHEMA

create table 'Screen_Type'(
    screenTypeID        int auto_increment primary key,
    theatreScreenName   varchar(100) not null unique,
    priceMultiplier     decimal(2, 2) not null
);



create table 'Theatre'(
    theatreID           int auto_increment primary key,
    theatreName         varchar(100) not null,
    address             varchar(255) not null unique,
    openTime            time not null, 
    closeTime           time not null
);


create table 'Theatre_Screen'(
    theatreScreenID     int auto_increment primary key,
    screenCount         int not null,
    seatCapacity        int not null,


    constraint FK_Theatre_Screen_Theatre 
        foreign key (theatreID) references Theatre(theatreID),

    constraint FK_Theatre_Screen_Screen_Type
        foreign key (screenTypeID) references Screen_Type(screenTypeID)
    
);





create table 'Movie'(
    movieID             int auto_increment primary key,
    title               varchar(100) not null,
    genre               varchar(100) not null,
    duration            time not null,
    rating              int not null,
    basePrice           decimal(3, 2) not null
);



create table 'Showtime'(
    showtimeID         int auto_increment primary key,
    startTime          datetime not null,
    endTime            datetime not null,


    constraint FK_Showtime_MovieID
        foreign key (movieID) references Movie(movieID),

    constraint FK_Showtime_Theatre_Screen_ID
        foreign key (theatreScreenID) references Theatre_Screen(theatreScreenID)
)





create table 'Customer'(
    customerID         int auto_increment primary key,
    customerName       varchar(255) not null,
    email              varchar(255) not null unique
);



create table 'Ticket'(
    ticketID          int auto_increment primary key,
    seatNumber        varchar(255) not null,


    constraint FK_Ticket_CustomerID
        foreign key (customerID) references Customer(customerID),


    constraint FK_Ticket_Showtime_ID
        foreign key (showtimeID) references Showtime(showtimeID)
);




create table 'Concession_Type'(
    concessionTypeID   int auto_increment primary key,
    concessionName     varchar(255) not null unique,
    price              decimal(3, 2) not null
);




create table 'Concession_Purchase'(
    concessionPurchaseID    int auto_increment primary key,
    quantity                int not null, 



    constraint FK_Concession_Purchase_TicketID
        foreign key (ticketID) references Ticket(ticketID),

    
    constraint FK_Concession_Purchase_Concession_Type_ID
        foreign key (concessionTypeID) references Concession_Type(concessionTypeID)
);



create table 'Payment'(
    paymentID             int auto_increment primary key,
    price                 decimal(3, 2) not null,
    paymentMethod         varchar(255) not null,
    paymentStatus         varchar(255) not null,
    paidAt                datetime not null,


    constraint FK_Payment_TicketID
        foreign key (ticketID) references Ticket(ticketID)
);