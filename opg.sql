drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table opg(
id int not null primary key auto_increment,
naziv varchar(50) not null,
proizvod int not null,
oib char(11)
);
create table djelatnik(
id int not null primary key auto_increment,
proizvod int not null,
ime varchar(50) not null,
prezime varchar(50) not null
);
create table sirovina(
id int not null primary key auto_increment,
proizvod int not null,
naziv varchar(50)
);
create table proizvod(
id int not null primary key auto_increment,
sirovina int not null,
djelatnik int not null,
opg int not null
);
alter table proizvod add foreign key (djelatnik) references djelatnik(id);
alter table proizvod add foreign key (opg) references opg(id);
alter table proizvod add foreign key (sirovina) references sirovina(id);
alter table sirovina add foreign key (proizvod) references proizvod(id);