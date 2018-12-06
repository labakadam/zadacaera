drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table kuca(
id int not null primary key auto_increment,
ime varchar(50) not null,
radnoVrijeme datetime,
oib char(11)
);
create table ljubitelj(
id int not null primary key auto_increment,
kuca int not null,
ime varchar(50),
prezime varchar(50),
oib char(11)
);
create table umjetnina(
id int not null primary key auto_increment,
naziv varchar(50) not null,
vrijednost decimal(10,2),
tezina decimal
);
create table aukcija(
id int not null primary key auto_increment,
kuca int not null,
datum datetime,
umjetnina int not null
);
create table kupac(
id int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50),
aukcija int not null,
mobitel int
);
create table prodavac(
id int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50),
aukcija int not null,
oib char(11)
);
create table posrednik(
id int not null primary key auto_increment,
kupac int not null,
prodavac int not null
);
create table aukcijaUmjetnina(
aukcija int not null,
umjetnina int not null
);
alter table aukcija add foreign key (kuca) references kuca(id);
alter table ljubitelj add foreign key (kuca) references kuca(id);
alter table aukcijaUmjetnina add foreign key (aukcija) references aukcija(id);
alter table aukcijaUmjetnina add foreign key (umjetnina) references umjetnina(id);
alter table kupac add foreign key (aukcija) references aukcija(id);
alter table prodavac add foreign key (aukcija) references aukcija(id);
alter table posrednik add foreign key (kupac) references kupac(id);
alter table posrednik add foreign key (prodavac) references prodavac(id);

insert into kuca(id,ime,radnoVrijeme,oib) values(1,"Picasso",null,null),
(2,"Churchill",null,null),(3,"Leonardo da Vinci",null,null);
insert into ljubitelj(id,kuca,ime,prezime,oib) values(1,1,"Marko","Markovic",null),
(2,2,"Pero","Perkovic",null),(3,3,"Ivan","Ivanovic",null);
insert into aukcija(id,kuca,datum,umjetnina) values(1,1,null,1),
(2,2,null,2),(3,3,null,3);
insert into prodavac(id,ime,prezime,aukcija,oib) values(1,"Miko","Mikic",1,null),
(2,"Cuci","Cukic",2,null),(3,"Visnja","Visnjic",3,null);
insert into umjetnina(id,naziv,vrijednost,tezina) values(1,"Prva slika",null,null),
(2,"Druga slika",null,null),(3,"Treca slika",null,null);
insert into kupac(id,ime,prezime,aukcija,mobitel) values(1,"Boro","Boric",1,null),
(2,"Stolo","Stolic",2,null),(3,"Koko","Kokic",3,null);
insert into posrednik(id,kupac,prodavac) values(1,1,1),
(2,2,2),(3,3,3);
insert into aukcijaUmjetnina(aukcija,umjetnina) values(1,1),
(2,2),(3,3);