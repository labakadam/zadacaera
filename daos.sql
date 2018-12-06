drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table daos(
id int not null primary key auto_increment,
naziv varchar(50),
oib char(11),
radnoVrijeme datetime
);
create table knjiga(
id int not null primary key auto_increment,
daos int not null,
naziv varchar(50),
autor varchar(50),
korisnik varchar(50)
);
create table korisnik(
id int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50),
knjiga int not null
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

insert into daos(id,naziv,oib,radnovrijeme) values(1,"DAOS",null,null),
(2,"Arhiv knjiga",null,null),(3,"Povijest knjiga",null,null);
insert into korisnik(id,ime,prezime,knjiga) values(1,"Marko","Markic",1),
(2,"Pero","Peric",2),(3,"Joko","Jokic",3);
insert into knjiga(id,daos,naziv,autor,korisnik) values(1,1,"Vlak u snijegu",null,1),
(2,2,"Trnoruzica",null,2),(3,3,"Snjeguljica",null,3);
insert into knjigaKorisnik(knjiga,korisnik) values(1,1),
(2,2),(3,3);
insert into obrazac(id,korisnik,datum) values(1,1,null),
(2,2,null),(3,3,null);
insert into gradivo(id,obrazac,datum) values(1,1,null),
(2,2,null),(3,3,null);