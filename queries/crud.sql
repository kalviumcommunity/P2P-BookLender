-- add a new user
insert into Users (name,email,country,mobile)
values ('Nikhil Jose','hi@nikjos.in','IN','8989898989');

-- view details of user with ID 2
select * from Users where id=2;

-- add a new author
insert into Authors (name)
values ('Deepinder Goyal'),('Naina Sahni'),('Ashish Goel');

-- add a new title to the books table and author details for the same
insert into Books (name,isbn)
values ('CULTure at Zomato: How to Rewire Your Brain for Greatness','935345171X');

insert into TitleAuthors (book,author,is_primary)
values (1,3,1),(1,4,0),(1,5,0);

-- add a new copy of book id 1 to inventory, owned by user id 2
insert into Inventory (book,owner)
values (1,2);

-- list the copies not enabled for lending
select i.id as inv_id, b.name as book, u.name as owner, i.status as status
from Inventory i 
inner join Books b on b.id=i.book 
inner join Users u on u.id=i.owner
where status='nolend';

-- set status of inventory 3 as available
update Inventory 
set status='available'
where id=3;

-- view all copies of book id 1 avilable to lend
select i.id as inv_id, b.name as book, u.name as owner, i.status as status
from Inventory i 
inner join Books b on b.id=i.book 
inner join Users u on u.id=i.owner
where status='available' and b.id=1;