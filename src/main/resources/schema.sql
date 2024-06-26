drop table users;
drop table authorities;
drop table transactions;
create table users(
username varchar_ignorecase(50) not null primary key,
password varchar_ignorecase(50) not null,
email varchar(100) not null,
enabled boolean not null
);

create table authorities(
    username varchar_ignorecase(50) not null,
    authority varchar_ignorecase(50) not null,
    constraint fk_authorities_users foreign key(username) references users(username)
);
create unique index ix_auth_username on authorities(username,authority);
create table if not exists transactions(id int primary key, username varchar(30), coin varchar(30));