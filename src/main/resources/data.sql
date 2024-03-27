insert into users values('snakamoto','{noop}bitcoin','snakamoto@gmail.com',true);
insert into users values('user','{noop}pa$$word','user@gmail.com',true);
insert into users values('admin','{noop}god','admin@gmail.com',true);
insert into authorities values('user','USER');
insert into authorities values('admin','ADMIN');
insert into transactions values(1,'user','BTC');