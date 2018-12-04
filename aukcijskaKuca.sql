drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table kuca(
id int not null primary key auto_increment,
ime varchar(50) not null,
oib char(11)
);
create table ljubitelj(
id int not null primary key auto_increment,
kuca int not null,
ime varchar(50),
prezime varchar(50)
);
create table umjetnina(
id int not null primary key auto_increment,
naziv varchar(50) not null,
vrijednost decimal(10,2)
);
create table aukcija(
id int not null primary key auto_increment,
kuca int not null,
datum datetime
);
create table kupac(
id int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
aukcija int not null
);
create table prodavac(
id int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
aukcija int not null
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
