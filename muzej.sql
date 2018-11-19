drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table muzej(
id int not null primary key auto_increment,
naziv varchar(50),
radnoVrijeme datetime
);
create table izlozba(
id int not null primary key auto_increment,
datum datetime not null,
naziv varchar(50),
sponzor int,
muzej int not null
);
create table kustos(
id int not null primary key auto_increment,
izlozba int not null,
ime varchar(50),
mobitel int
);
create table djelo(
id int not null primary key auto_increment,
izlozba int not null,
ime varchar(50),
oznaka int
);
create table sponzor(
id int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50),
mobitel int
);

alter table izlozba add foreign key (muzej) references muzej(id);
alter table djelo add foreign key (izlozba) references izlozba(id);
alter table kustos add foreign key (izlozba) references izlozba(id);
alter table izlozba add foreign key (sponzor) references sponzor(id);


insert into muzej(id,naziv,radnoVrijeme) values
(1,'Muzej umjetnosti','2018-12-15 12:00:00'),
(2,'Muzej šarenila','2018-12-15 12:00:00'),
(3,'Muzej kreativnosti','2018-12-15 12:00:00');

insert into izlozba(id,datum,naziv,sponzor,muzej) values
(1,'2018-12-15 12:00:00','Izlozba mladih umjetnika',null,1),
(2,'2018-12-15 12:00:00','Izlozba akademika',null,2),
(3,'2018-12-15 12:00:00','Izlozba invalida',null,3);

insert into kustos(id,izlozba,ime,mobitel) values
(1,1,null,null),
(2,2,null,null),
(3,3,null,null);

insert into djelo(id,izlozba,ime,oznaka) values
(1,1,null,null),
(2,2,null,null),
(3,3,null,null);

insert into sponzor(id,ime,prezime,mobitel) values
(1,'Adam','Labak',null),
(2,'Matija','Labak',null),
(3,'Marija','Labak',null);