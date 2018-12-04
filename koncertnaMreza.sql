drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table koncertnaMreza(
id int not null primary key auto_increment,
naziv varchar(50),
informacija varchar(50)
);
create table korisnik(
id int not null primary key auto_increment,
koncertnaMreza int not null,
ime varchar(50),
prezime varchar(50)
);
create table posluzitelj(
id int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11)
);
create table informacija(
id int not null primary key auto_increment,
koncertnaMreza int not null,
korisnikInformacija int not null,
posluzitelj int not null
);
create table korisnickiRacun(
id int not null primary key auto_increment,
korisnik int not null, 
lozinka varchar(50)
);
create table korisnikInformacija(
informacija int not null,
korisnik int not null
);
alter table korisnik add foreign key (koncertnaMreza) references koncertnaMreza(id);
alter table informacija add foreign key (koncertnaMreza) references koncertnaMreza(id);
alter table korisnickiRacun add foreign key (korisnik) references korisnik(id);
alter table korisnikInformacija add foreign key (korisnik) references korisnik(id);
alter table korisnikInformacija add foreign key (informacija) references informacija(id);
alter table informacija add foreign key (posluzitelj) references posluzitelj(id);