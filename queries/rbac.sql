-- create roles
create role 'app_backend','db_admin','analyst';


-- grant speicifc access to each role
grant all on p2p_booklend.* to 'db_admin';

grant select, insert, update, delete on p2p_booklend.* to 'app_backend';

grant select on p2p_booklend.* to 'analyst';


-- create users
create user 'server_user'@'localhost' identified by 'server_pass';

create user 'admin_user'@'localhost' identified by 'admin_pass';

create user 'analyst_user'@'localhost' identified by 'analyst_pass';


-- assign role previleges to users and set as default role
grant 'app_backend' to 'server_user'@'localhost';
set default role 'app_backend' to 'server_user'@'localhost';

grant 'db_admin' to 'admin_user'@'localhost';
set default role 'db_admin' to 'admin_user'@'localhost';

grant 'analyst' to 'analyst_user'@'localhost';
set default role 'analyst' to 'analyst_user'@'localhost';