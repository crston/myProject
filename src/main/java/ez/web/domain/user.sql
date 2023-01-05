create table tbl_user(
    userId varchar(20) UNIQUE not null,
    userPw varchar(100) not null,
    userName varchar(20) UNIQUE not null,
    userEmail varchar(20) not null
);
drop table tbl_user;