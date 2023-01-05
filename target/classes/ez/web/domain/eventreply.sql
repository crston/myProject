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

insert into tbl_evreply(bid, r_contents, replyer)
values(10, '10번글의 댓글', '홍길동');

select * from tbl_evreply;