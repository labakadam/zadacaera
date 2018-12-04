drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table bend(
id int not null primary key auto_increment,
clan int not null,
naziv varchar(50)
);
create table web(
id int not null primary key auto_increment,
bend int not null,
naziv varchar(50)
);
create table korisnik(
id int not null primary key auto_increment,
web int not null,
ime varchar(50),
prezime varchar(50)
);
create table clan(
id int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50),
bend int not null
);
create table webBend(
web int not null,
bend int not null
);
alter table korisnik add foreign key (web) references web(id);
alter table webBend add foreign key (web) references web(id);
alter table webBend add foreign key (bend) references bend(id);
alter table clan add foreign key (bend) references bend(id);