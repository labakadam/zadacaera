drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table skola(
id int not null primary key auto_increment,
ime varchar(50), 
oib char(11)
);
create table razred(
id int not null primary key auto_increment,
skola int not null,
oznaka varchar(50) 
);
create table ucenik(
id int not null primary key auto_increment,
razred int not null,
ime varchar(50)
);
create table profesor(
id int not null primary key auto_increment,
ime varchar(50),
razred int not null
);
create table twain(
profesor int not null,
razred int not null
);

alter table razred add foreign key (skola) references skola(id);
alter table ucenik add foreign key (razred) references razred(id);
alter table twain add foreign key (profesor) references profesor(id);
alter table twain add foreign key (razred) references razred(id);

insert into skola(id,ime,oib) values(1,'ivice draskovica',null);
insert into razred(id,skola,oznaka) values(1,1,'odjeljenje 5');
insert into ucenik(id,razred,ime) values(1,1,'mario');
insert into profesor(id,ime,razred) values(1,'josip',1);
insert into twain(profesor,razred) values(1,1);