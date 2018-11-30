drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table doktor(
id int not null primary key auto_increment,
ime varchar(50),
oib char(11)
);
create table pacijent(
id int not null primary key auto_increment,
doktor int not null,
ime varchar(50)
);
create table lijecenje(
id int not null primary key auto_increment,
medicinskaSestra int not null,
pacijent int not null
);
create table medicinskaSestra(
id int not null primary key auto_increment,
oib char(11),
ime varchar(50)
);
alter table pacijent add foreign key(doktor) references doktor(id);
alter table lijecenje add foreign key(pacijent) references pacijent(id);
alter table lijecenje add foreign key(medicinskaSestra) references medicinskaSestra(id);
insert into doktor(id,ime,oib) values(1,'ivan',null);
insert into medicinskaSestra(id,oib,ime) values(1,null,'mirjana');
insert into pacijent(id,doktor,ime) values(1,1,'mihael');
insert into lijecenje(id,medicinskaSestra,pacijent) values(1,1,1);
