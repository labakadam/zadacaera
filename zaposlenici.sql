drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table pripravnik(
id int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null
);

insert into pripravnik(id,ime,prezime) values
(1,'Adam','Labak'),
(2,'Matija','Labak'),
(3,'Marija','Labak');