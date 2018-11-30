drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table restoran(
id int not null primary key auto_increment,
ime varchar(50) not null,
oib char(11)
);
create table kategorija(
id int not null primary key auto_increment,
restoran int not null,
naziv varchar(50)
);
create table pice(
id int not null primary key auto_increment,
ime varchar(50),
cijena decimal(18,2)
);
create table jelo(
id int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50)
);
create table jelovnik(
jelo int not null,
pice int not null,
kategorija int not null
);
alter table kategorija add foreign key (restoran) references restoran(id);
alter table jelovnik add foreign key (kategorija) references kategorija(id);
alter table jelovnik add foreign key (pice) references pice(id);
alter table jelovnik add foreign key (jelo) references jelo(id);
