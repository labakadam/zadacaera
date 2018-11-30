drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table skola(
id int not null primary key auto_increment,
naziv varchar(50),
oib char(11)
);
create table radionica(
id int not null primary key auto_increment,
ime varchar(50),
skola int not null
);
create table dijete(
id int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50)
);
create table uciteljica(
id int not null primary key auto_increment,
ime varchar(50),
iban char(21)
);
create table twain(
radionica int not null,
dijete int not null,
uciteljica int not null
);

alter table radionica add foreign key (skola) references skola(id);
alter table twain add foreign key (radionica) references radionica(id);
alter table twain add foreign key (dijete) references dijete(id);
alter table twain add foreign key (uciteljica) references uciteljica(id);