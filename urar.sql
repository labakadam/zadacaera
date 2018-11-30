drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table urar( 
id int not null primary key auto_increment,
ime varchar(50),
oib char(11)
);
create table sat(
id int not null primary key auto_increment,
urar int not null,
korisnik int not null
);
create table korisnik(
id int not null primary key auto_increment,
ime varchar(50),
mobitel int
);
create table segrt(
id int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50)
);
create table popravak(
id int not null primary key auto_increment,
vrijeme datetime,
sat int not null,
segrt int not null
);
alter table sat add foreign key(urar) references urar(id);
alter table sat add foreign key(korisnik) references korisnik(id);
alter table popravak add foreign key(segrt) references segrt(id);
alter table popravak add foreign key(sat) references sat(id);
