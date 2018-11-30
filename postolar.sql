drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table postolar(
id int not null primary key auto_increment,
ime varchar(50) not null,
oib char(11),
iban char(21) 
);
create table obuca(
id int not null primary key auto_increment,
korisnik int not null,
postolar int not null
);
create table korisnik(
id int not null primary key auto_increment,
ime varchar(50),
popravak int not null,
mobitel int
);
create table popravak(
id int not null primary key auto_increment,
segrt int not null,
korisnik int not null,
obuca int not null
);
create table segrt(
id int not null primary key auto_increment,
ime varchar(50),
postolar int not null
);

alter table obuca add foreign key (postolar) references postolar(id);
alter table obuca add foreign key (korisnik) references korisnik(id);
alter table popravak add foreign key (korisnik) references korisnik(id);
alter table popravak add foreign key (obuca) references obuca(id);
alter table popravak add foreign key (segrt) references segrt(id);
insert into postolar values(1,'franjo','125478569847','21457586954785632569854'),
(2,'viktor',null,null),(3,'adam',null,null);
insert into korisnik values(1,null,1,null),(2,null,2,null),(3,null,3,null);
insert into obuca values(1,1,1),(2,2,2),(3,3,3);
insert into segrt values(1,null,1),(2,null,2),(3,null,3);
insert into popravak values(1,1,1,1),(2,2,2,2),(3,3,3,3);