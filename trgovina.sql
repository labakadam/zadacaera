drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table racun(
id int not null primary key auto_increment,
redniBroj int,
datum datetime,
operater int
);
create table operater(
id int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
naBolovanju boolean
);
create table stavka(
racun int not null,
proizvod int,
kolicina int
);
create table proizvod(
id int not null primary key auto_increment,
naziv varchar(50) not null,
jedinicnaMjera decimal(18,2),
cijena decimal(18,2)
);

alter table stavka add foreign key (racun) references racun(id);
alter table racun add foreign key (operater) references operater(id);
alter table stavka add foreign key (proizvod) references proizvod(id);

insert into racun(id,redniBroj,datum,operater) values
(1,100,'2018-11-12 12:00:12',null),
(2,101,'2018-11-15 13:02:12',null),
(3,102,'2018-11-17 14:05:20',null);
insert into operater(id,ime,prezime,naBolovanju) values
(1,'Adam','Labak',null),
(2,'Matija','Kristek',null);
insert into stavka(racun,proizvod,kolicina) values
(1,null,null),
(2,null,null),
(3,null,null);
insert into proizvod(id,naziv,jedinicnaMjera,cijena) values
(1,'Mlijeko',null,null),
(2,'Riba',null,null),
(3,'Kruh',null,null),
(4,'Pasteta',null,null),
(5,'Cips',null,null);