10101 김학생 75 85 90 60
10102 이학생 70 75 70 60
10103 박학생 70 85 80 75
10201 조학생 90 85 100 50
10202 황학생 65 65 60 70
10203 임학생 45 55 50 55
10304 천학생 70 75 85 80
10305 남학생 100 85 90 90
10306 여학생 80 95 90 85
10307 노학생 35 55 70 55

insert into examtbl values('10102', '이학생', 70, 75, 70, 60);
insert into examtbl values('10103', '박학생', 70, 85, 80, 75);
insert into examtbl values('10201', '조학생', 90, 85, 100, 50);
insert into examtbl values('10202', '황학생', 65, 65, 60, 70);
insert into examtbl values('10203', '임학생', 45, 55, 50, 55);
insert into examtbl values('10304', '천학생', 70, 75, 85, 80);
insert into examtbl values('10305', '남학생', 100, 85, 90, 90);
insert into examtbl values('10306', '여학생', 80, 95, 90, 85);
insert into examtbl values('10307', '노학생', 35, 55, 70, 55);

select * from member;

insert into member values('ppk', '1234', '나니', now();


update examtbl set kor=99 
where sName="권나라";
update examtbl set kor=80 
where sName="김학생";
update examtbl set kor=70 
where sName="이학생";
update examtbl set kor=71 
where sName="박학생";
update examtbl set kor=72 
where sName="조학생";
update examtbl set kor=73 
where sName="황학생";
update examtbl set kor=74 
where sName="임학생";

update examtbl set kor=75 
where sName="전학생";
update examtbl set kor=89 
where sName="김딱딱";

update examtbl set kor=95 
where sName="한소희";


create table school (
	id int not null primary key auto_increment,
	name varchar(20) not null,
	kor int,
	eng int
);

insert into school(id, name, kor, eng) values(1001,'ppk',90,95);

insert into school(name, kor, eng) values('jin',90,95);
insert into school(name, kor, eng) values('ho',90,95);

insert into school(name, kor, eng) values('Bae',90,95);

update school set kor=99,eng=97
where name="Bae";

select * from examtbl;

select count(*) as tc  from  examtbl ;



delete from psd0422;


create table psd0422 (
	num_id int not null primary key auto_increment,
	name varchar(10) not null,
	file varchar(50) not null,
	reg_date datetime not null
);



create table psd0423 (
	idx int not null primary key auto_increment,
	name varchar(10) not null,
	price int not null,
	file varchar(50) not null,
	etc varchar(500) not null,
	reg_date datetime not null
);

select * from border0427;




create table psd0427 (
	idx int not null primary key auto_increment,
	title varchar(30) not null,
	name varchar(10) not null,
	reg_date datetime not null
);

create table border0427 (
	idx int not null primary key auto_increment,
	title varchar(30) not null,
	name varchar(10) not null,
	reg_date datetime not null
);


insert into border0427(title,name,reg_date)
values ('페이지 나누기연습', '바다','2021-04-26');
insert into border0427(title,name,reg_date)
values ('주식공부하기', '초보자','2021-04-25');
insert into border0427(title,name,reg_date)
values ('자바공부하기', 'IT초보자','2021-04-27');



select idx,title,name,reg_date from border0427
order by idx desc limit 0,2;

select idx,title,name,reg_date from border0427
where idx=3;

select count(*) from border0427;



