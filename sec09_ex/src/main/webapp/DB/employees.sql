create table employees(
	id varchar(10) not null primary key,
	pass varchar(10) not null,
	name varchar(24),
	lev char(1) default 'A',   -- 직급 => A:일반사원 , B:팀장 , D:임원 , E:대표 
	enter date,
	gender char(1) default '1',   -- 성별 => 1:여자, 2:남자
	phone varchar(30)
	);

select * from employees;

insert into employees values ("gildong", "1234", "홍길동", 'A', 20221225, '1', "01012345678");
insert into employees values ("hoi", "1234", "둘리", 'B', 19900101, '2', "01080808080");