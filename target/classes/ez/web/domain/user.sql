create table tbl_user(
    userId varchar(20) not null primary key,
    userPw varchar(100) not null,
    userName varchar(20) unique not null,
    userEmail varchar(40) not null
);
drop table tbl_user;