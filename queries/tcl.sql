-- start a transaction
START TRANSACTION;

-- sample insertion query for demo
insert into Authors (name)
values ('Dan Brown');

-- create a savepoint with current changes
SAVEPOINT sp_ins;

-- sample deletion query for demo
delete from Authors where id=3;

-- rollback to savepoint
ROLLBACK TO sp_ins;

-- commit changes
COMMIT;
