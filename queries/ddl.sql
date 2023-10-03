create table Users(
    id int primary key auto_increment,
    name varchar(255) not null,
    email varchar(255) not null,
    country varchar(2),
    mobile varchar(255) not null
);

create table Books(
    id int primary key auto_increment,
    name varchar(255) not null,
    isbn varchar(15)
);

create table Inventory(
    id int primary key auto_increment,
    book int not null,
    owner int not null,
    status varchar(10) default 'nolend',
    possessor int default null,
    foreign key (book) references Books(id),
    foreign key (owner) references Users(id),
    foreign key (possessor) references Users(id)
);

create table Authors(
    id int primary key auto_increment,
    name varchar(255) not null
);

create table TitleAuthors(
    id int primary key auto_increment,
    book int not null,
    author int not null,
    is_primary tinyint default 0,
    foreign key (book) references Books(id),
    foreign key (author) references Authors(id)
);

create table Countries(
    iso_code varchar(2) primary key,
    name varchar(255) not null,
    call_code varchar(10)
);

-- Add foreign key constraint to country column on Users table
-- based on new primary key
alter table Users
add constraint foreign key(country)
references Countries(iso_code);

create table Requests(
    id int primary key auto_increment,
    inventory int not null,
    requester int not null,
    status varchar(10) default 'pending',
    foreign key (inventory) references Inventory(id),
    foreign key (requester) references Users(id)
);


-- NOTE: The following query is not required and is kept to demonstrate the use of DROP
-- Drop Countries table
-- Need to drop the foreign key constraint in Users table 
-- towards countries table to Drop the countries table
alter table Users
drop constraint Users_ibfk_1;

drop table Countries;