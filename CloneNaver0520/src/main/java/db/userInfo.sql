
create table userInfo (

	id varchar2(100),
	pwd varchar2(100),
	name varchar2(100),
	tel varchar2(100),
	gender varchar2(100),
	birthday varchar2(100)
	

)

insert into USERINFO values('asdf','qwerty','È«±æµ¿','010-1234-5555','³²ÀÚ','1996-03-12');

select * from userinfo

select id, pwd from userinfo where id = 'asdf' and pwd = 'qwerty'