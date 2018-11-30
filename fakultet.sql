drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table fakultet(
id int not null primary key auto_increment,
naziv varchar(50) not null,
oib char(11)
);
create table student(
id int not null primary key auto_increment,
ime varchar(50) not null,
fakultet int not null
);
create table rok(
id int not null primary key auto_increment,
student int not null,
vrijeme datetime
);
create table kolegij(
id int not null primary key auto_increment,
student int not null,
vrijeme datetime
);

alter table student add foreign key (fakultet) references fakultet(id);
alter table rok add foreign key (student) references student(id);
alter table kolegij add foreign key (student) references student(id);
insert into fakultet(id,naziv,oib) values(1,'pravni fakultet',null);
insert into student(id,ime,fakultet) values(1,'josip',1);
insert into rok(id,student,vrijeme) values(1,1,null);
insert into kolegij(id,student,vrijeme) values(1,1,null);