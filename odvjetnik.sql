drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table odvjetnik(
id int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null 
);
create table klijent(
id int not null primary key auto_increment,
odvjetnik int not null,
ime varchar(50)
);
create table obrana(
id int not null primary key auto_increment,
klijent int not null,
odvjetnik int not null
);
create table suradnik(
id int not null primary key auto_increment,
odvjetnik int not null,
ime varchar(50) not null,
prezime varchar(50) not null
);
create table obranaSuradnik(
obrana int not null,
suradnik int not null
);
alter table klijent add foreign key (odvjetnik) references odvjetnik(id);
alter table obrana add foreign key (klijent) references klijent(id);
alter table obranaSuradnik add foreign key (suradnik) references suradnik(id);
alter table obranaSuradnik add foreign key (obrana) references obrana(id);
alter table suradnik add foreign key (odvjetnik) references odvjetnik(id);
alter table obrana add foreign key (odvjetnik) references odvjetnik(id);