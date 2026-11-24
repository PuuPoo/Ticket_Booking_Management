-- MYSQL DATABASE DATA TABLES SCHEMA

create table Screen_Type(
    screenTypeID        int auto_increment primary key,
    theatreScreenName   varchar(100) not null unique,
    priceMultiplier     decimal(3, 2) not null
);



create table Theatre(
    theatreID           int auto_increment primary key,
    theatreName         varchar(100) not null,
    address             varchar(255) not null unique,
    openTime            time not null, 
    closeTime           time not null
);


create table Studio(
    studioID            int auto_increment primary key,
    theatreID           int not null,
    screenTypeID        int not null,
    seatCapacity        int not null,


    constraint FK_Studio_Theatre 
        foreign key (theatreID) references Theatre(theatreID),

    constraint FK_Studio_Screen_Type
        foreign key (screenTypeID) references Screen_Type(screenTypeID)
    
);





create table Movie(
    movieID             int auto_increment primary key,
    title               varchar(100) not null,
    genre               varchar(100) not null,
    duration            time not null,
    rating              varchar(10) not null,
    basePrice           decimal(8, 2) not null
);



create table Showtime(
    showtimeID         int auto_increment primary key,
    movieID             int not null,
    studioID            int not null,
    startTime          datetime not null,
    endTime            datetime not null,


    constraint FK_Showtime_MovieID
        foreign key (movieID) references Movie(movieID),

    constraint FK_Showtime_Studio_ID
        foreign key (studioID) references Studio(studioID)
);





create table Customer(
    customerID         int auto_increment primary key,
    customerName       varchar(255) not null,
    email              varchar(255) not null unique
);



create table Ticket(
    ticketID          int auto_increment primary key,
    customerID        int not null,
    showtimeID        int not null,
    seatNumber        varchar(255) not null,


    constraint FK_Ticket_CustomerID
        foreign key (customerID) references Customer(customerID),


    constraint FK_Ticket_Showtime_ID
        foreign key (showtimeID) references Showtime(showtimeID),

    constraint Unique_Ticket_Seat
        unique (showtimeID, seatNumber)
);




create table Concession_Type(
    concessionTypeID   int auto_increment primary key,
    concessionName     varchar(255) not null unique,
    price              decimal(8, 2) not null
);




create table Concession_Purchase(
    concessionPurchaseID    int auto_increment primary key,
    ticketID                int not null,
    concessionTypeID        int not null,
    quantity                int not null, 



    constraint FK_Concession_Purchase_TicketID
        foreign key (ticketID) references Ticket(ticketID),

    
    constraint FK_Concession_Purchase_Concession_Type_ID
        foreign key (concessionTypeID) references Concession_Type(concessionTypeID)
);



create table Payment(
    paymentID             int auto_increment primary key,
    ticketID              int not null,
    price                 decimal(8, 2) not null,
    paymentMethod         varchar(255) not null,
    paymentStatus         varchar(255) not null,
    paidAt                datetime null,
    createdAt             datetime not null default current_timestamp,
    updatedAt             datetime not null default current_timestamp on update current_timestamp,


    constraint FK_Payment_TicketID
        foreign key (ticketID) references Ticket(ticketID)
);