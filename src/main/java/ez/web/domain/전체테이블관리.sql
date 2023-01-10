create table tbl_broadcast(
	bid int auto_increment primary key,
    subject varchar(100) not null,
    contents varchar(3000) not null,
    hit int default 0,
    writer varchar(30) not null,
    regDate datetime default now() not null
);

create table tbl_bdreply(
	rno int auto_increment primary key,
    bid int,
    r_contents varchar(1000) not null,
    replyer varchar(20) not null,
    r_date datetime default now(),
    update_date datetime default now(),
    
	-- tbl_board의 bid를 외래키로 사용	
    foreign key(bid) references tbl_broadcast(bid)    
);
create table tbl_update(
	bid int auto_increment primary key,
    subject varchar(100) not null,
    contents varchar(3000) not null,
    hit int default 0,
    writer varchar(30) not null,
    regDate datetime default now() not null
);

create table tbl_upreply(
	rno int auto_increment primary key,
    bid int,
    r_contents varchar(1000) not null,
    replyer varchar(20) not null,
    r_date datetime default now(),
    update_date datetime default now(),
    
	-- tbl_board의 bid를 외래키로 사용	
    foreign key(bid) references tbl_update(bid)    
);

create table tbl_event(
	bid int auto_increment primary key,
    subject varchar(100) not null,
    contents varchar(3000) not null,
    hit int default 0,
    writer varchar(30) not null,
    regDate datetime default now() not null
);

create table tbl_evreply(
	rno int auto_increment primary key,
    bid int,
    r_contents varchar(1000) not null,
    replyer varchar(20) not null,
    r_date datetime default now(),
    update_date datetime default now(),
    
	-- tbl_board의 bid를 외래키로 사용	
    foreign key(bid) references tbl_event(bid)    
);

create table tbl_free(
	bid int auto_increment primary key,
    subject varchar(100) not null,
    contents varchar(3000) not null,
    hit int default 0,
    writer varchar(30) not null,
    regDate datetime default now() not null
);

create table tbl_frreply(
	rno int auto_increment primary key,
    bid int,
    r_contents varchar(1000) not null,
    replyer varchar(20) not null,
    r_date datetime default now(),
    update_date datetime default now(),
    
	-- tbl_board의 bid를 외래키로 사용	
    foreign key(bid) references tbl_free(bid)    
);

create table tbl_recruit(
	bid int auto_increment primary key,
    subject varchar(100) not null,
    contents varchar(3000) not null,
    hit int default 0,
    writer varchar(30) not null,
    regDate datetime default now() not null
);

create table tbl_recruitreply(
	rno int auto_increment primary key,
    bid int,
    r_contents varchar(1000) not null,
    replyer varchar(20) not null,
    r_date datetime default now(),
    update_date datetime default now(),
    
	-- tbl_board의 bid를 외래키로 사용	
    foreign key(bid) references tbl_recruit(bid)    
);

create table tbl_tippve(
	bid int auto_increment primary key,
    subject varchar(100) not null,
    contents varchar(3000) not null,
    hit int default 0,
    writer varchar(30) not null,
    regDate datetime default now() not null
);

create table tbl_tippvereply(
	rno int auto_increment primary key,
    bid int,
    r_contents varchar(1000) not null,
    replyer varchar(20) not null,
    r_date datetime default now(),
    update_date datetime default now(),
    
	-- tbl_board의 bid를 외래키로 사용	
    foreign key(bid) references tbl_tippve(bid)    
);

create table tbl_tippvp(
	bid int auto_increment primary key,
    subject varchar(100) not null,
    contents varchar(3000) not null,
    hit int default 0,
    writer varchar(30) not null,
    regDate datetime default now() not null
);

create table tbl_tippvpreply(
	rno int auto_increment primary key,
    bid int,
    r_contents varchar(1000) not null,
    replyer varchar(20) not null,
    r_date datetime default now(),
    update_date datetime default now(),
    
	-- tbl_board의 bid를 외래키로 사용	
    foreign key(bid) references tbl_tippvp(bid)    
);

create table tbl_sugg(
	bid int auto_increment primary key,
    subject varchar(100) not null,
    contents varchar(3000) not null,
    hit int default 0,
    writer varchar(30) not null,
    regDate datetime default now() not null
);

create table tbl_suggreply(
	rno int auto_increment primary key,
    bid int,
    r_contents varchar(1000) not null,
    replyer varchar(20) not null,
    r_date datetime default now(),
    update_date datetime default now(),
    
	-- tbl_board의 bid를 외래키로 사용	
    foreign key(bid) references tbl_sugg(bid)    
);

create table tbl_user(
    userId varchar(20) UNIQUE not null,
    userPw varchar(100) not null,
    userName varchar(20) UNIQUE not null,
    userEmail varchar(40) not null
);

drop table tbl_broadcast;
drop table tbl_bdreply;
drop table tbl_update;
drop table tbl_upreply;
drop table tbl_event;
drop table tbl_evreply;
drop table tbl_free;
drop table tbl_frreply;
drop table tbl_recruit;
drop table tbl_rereply;
drop table tbl_tippve;
drop table tbl_tippvereply;
drop table tbl_tippvp;
drop table tbl_tippvpreply;
drop table tbl_sugg;
drop table tbl_suggreply;
drop table tbl_user;