drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table EKatalog(
id int not null primary key auto_increment,
djelo int not null,
naziv varchar(50),
srednjoskolac int
);
create table srednjoskolac(
id int not null primary key auto_increment,
EKatalog int not null,
skola int not null,
ime varchar(50),
prezime varchar(50)
);
create table skola(
id int not null primary key auto_increment,
EKatalog int not null,
ime varchar(50),
mjesto varchar(50)
);
create table djelo(
id int not null primary key auto_increment,
naslov varchar(50),
autor varchar(50),
mjesto varchar(50),
izdavac varchar(50),
srednjskolac int not null,
EKatalog int not null
);
create table zanimljivosti(
id int not null primary key auto_increment,
EKatalog int not null,
text varchar(200),
pisac varchar(50)
);
create table informacija(
id int not null primary key auto_increment,
EKatalog int not null,
pisac varchar(50),
naslov varchar(50)
);
create table srednjoskolacDjelo(
srednjoskolac int not null,
djelo int not null
);
alter table srednjoskolac add foreign key (EKatalog) references EKatalog(id);
alter table skola add foreign key (EKatalog) references EKatalog(id);
alter table djelo add foreign key (EKatalog) references EKatalog(id);
alter table zanimljivosti add foreign key (EKatalog) references EKatalog(id);
alter table informacija add foreign key (EKatalog) references EKatalog(id);
alter table srednjoskolacDjelo add foreign key (srednjoskolac) references srednjoskolac(id);
alter table srednjoskolacDjelo add foreign key (djelo) references djelo(id);
alter table srednjoskolac add foreign key (skola) references skola(id);
