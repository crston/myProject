use sample;

-- now() : 입력시 시간설정됨
create table tbl_free(
	bid int auto_increment primary key,
    subject varchar(100) not null,
    contents varchar(3000) not null,
    hit int default 0,
    writer varchar(30) not null,
    regDate datetime default now() not null
);

insert into tbl_free(subject, contents, writer)
values('테스트~~~', '테스트~~~', '아무개');

select * from tbl_free;