drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table daos(
id int not null primary key auto_increment,
oib char(11),
radnoVrijeme datetime
);
create table knjiga(
id int not null primary key auto_increment,
daos int not null,
naziv varchar(50) not null,
autor varchar(50) not null,
korisnik varchar(50)
);
create table korisnik(
id int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
knjiga int
);
create table knjigaKorisnik(
knjiga int not null,
korisnik int not null
);
create table obrazac(
id int not null primary key auto_increment,
korisnik int not null,
datum datetime
);
create table gradivo(
id int not null primary key auto_increment,
obrazac int not null,
datum datetime
);
alter table knjiga add foreign key (daos) references daos(id);
alter table knjigaKorisnik add foreign key (knjiga) references knjiga(id);
alter table knjigaKorisnik add foreign key (korisnik) references korisnik(id);
alter table gradivo add foreign key (obrazac) references obrazac(id);
alter table obrazac add foreign key (korisnik) references korisnik(id);