
create table userInfo (

	id varchar2(100),
	pwd varchar2(100) not null,
	name varchar2(100) not null,
	tel varchar2(100) not null,
	gender varchar2(100) not null,
	birthday varchar2(100) not null
	

)

alter table userinfo 
	add constraint u_member_id unique(id)

insert into USERINFO values('admin','admin','È«±æµ¿','010-1234-5555','³²ÀÚ','1996-03-12');

drop table userinfo

select * from userinfo

select id, pwd from userinfo where id = 'asdf' and pwd = 'qwerty'

create table kakaouser(
	id varchar2(100),
	nickname varchar2(100),
	gender varchar2(100),
	birthday varchar2(100)
)
drop table kakaouser
insert into KAKAOUSER values('2258321183','·ù´ÙÈñ','female','0312')

select * from kakaouser
