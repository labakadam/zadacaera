drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table vrtic(
id int not null primary key auto_increment,
web int not null,
radnoVrijeme datetime
);
create table web(
id int not null primary key auto_increment,
informacije varchar(50),
prijava varchar(50),
dogadanje varchar(50)
);
create table roditelj(
id int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50),
dijete int not null,
web int not null
);
create table dijete(
id int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50),
oib char(11),
roditelj int not null,
vrtic int not null
);
alter table vrtic add foreign key (web) references web(id);
alter table roditelj add foreign key (web) references web(id);
alter table dijete add foreign key (vrtic) references vrtic(id);
alter table dijete add foreign key (roditelj) references roditelj(id);
