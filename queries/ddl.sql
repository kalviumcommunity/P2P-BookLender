create database p2p_booklend;

create table Users(
	id int primary key auto_increment,
    name varchar(255) not null,
    email varchar(255) not null,
    country int not null,
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
	code varchar(10) primary key,
    name varchar(255) not null
);

-- Change datatype of country in Users table to varchar(10)
alter table Users
modify column country varchar(10);

-- Add foreign key constraint to country column on Users table
alter table Users
add constraint foreign key(country)
references Countries(code);

-- Table drop query
-- Not required in the current use case, 
-- adding it for achieving the concept completion
-- drop table Countries;