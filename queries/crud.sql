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

-- view all copies of book which contains 'Rewire Your Brain' in title avilable to lend
-- use case: search using title
select i.id as inv_id, b.name as book, u.name as owner, i.status as status
from Inventory i 
inner join Books b on b.id=i.book 
inner join Users u on u.id=i.owner
where status='available' and b.name like '%rewire your brain%';

--view all books with their primary authors
select b.name as title, a.name as author
from Books b
right join TitleAuthors ta on ta.book=b.id
right join Authors a on ta.author=a.id
where ta.is_primary=true;

-- delete inventory of book 1 belonging to user 2
delete from Inventory where book=1 and owner = 2;

-- raise new lending request towards inventory 8 by user 4
insert into Requests (inventory,requester)
values (8,4);

-- view pending requests to user 3
select r.id as req_id, i.id as inv_id,u.name as requestor, b.name as book  from Requests r 
inner join Inventory i on r.inventory=i.id
inner join Users u on u.id=r.requester
inner join Books b on i.book=b.id
where i.owner=3 and r.status='pending';

-- approve request id 1
-- this should also change status of inventory to `inuse`
update Requests
set status="approved"
where id=1;

update Inventory
set status="inuse"
where id in (select inventory from Requests where id=1);

-- reject request id 1 from owner
update Requests
set status="rejected"
where id=1;

-- withdraw non approved requests
update Requests
set status="withdrawn"
where id=1;


-- view requests approved to collect (for user 4)
select r.id as req_id, i.id as inv_id, owner.name as owner, c.call_code as code, owner.mobile as contact, b.name as book  from Requests r 
inner join Inventory i on r.inventory=i.id
inner join Users owner on owner.id=i.owner
inner join Books b on i.book=b.id
inner join Countries c on owner.country=c.iso_code
where r.requester=4 and r.status='approved';

-- mark request 1 as collected
-- to be done by the reciever
update Requests
set status="collected"
where id=1;


-- cancel approved collection request for req id 1
-- this should also change status of inventory to `available`
update Requests
set status="cancelled"
where id=1;

update Inventory
set status="available"
where id in (select inventory from Requests where id=1);

-- update status as returned once the possesor returns an inventory to owner
-- should also update the inventory status as available
update Requests
set status="returned"
where id=1;

update Inventory
set status="available"
where id in (select inventory from Requests where id=1);