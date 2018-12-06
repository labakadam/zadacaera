drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table vrtic(
id int not null primary key auto_increment,
web int not null,
radnoVrijeme datetime,
mjesto varchar(50)
);
create table web(
id int not null primary key auto_increment,
naziv varchar(50),
informacija int not null,
dogadaj int not null,
kontakt int not null
);
create table roditelj(
id int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50),
dijete int not null,
web int not null
);
create table dijete(
id int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50),
oib char(11),
roditelj int not null,
vrtic int not null
);
create table dogadaj(
id int not null primary key auto_increment,
naziv varchar(50),
vrijeme datetime,
web int not null
);
create table informacija(
id int not null primary key auto_increment,
text varchar(200),
vrijeme datetime,
web int not null
);
create table odgojnaSkupina(
id int not null primary key auto_increment,
naziv varchar(50),
dijete int not null,
vrtic int not null
);
create table kontakt(
id int not null primary key auto_increment,
ime varchar(50),
mobitel int,
prezime varchar(50),
web int not null
);
create table webVrtic(
vrtic int not null,
web int not null
);
alter table dijete add foreign key (vrtic) references vrtic(id);
alter table dijete add foreign key (roditelj) references roditelj(id);
alter table roditelj add foreign key (web) references web(id);
alter table odgojnaSkupina add foreign key (vrtic) references vrtic(id);
alter table informacija add foreign key (web) references web(id);
alter table dogadaj add foreign key (web) references web(id);
alter table kontakt add foreign key (web) references web(id);
alter table webVrtic add foreign key (vrtic) references vrtic(id);
alter table webVrtic add foreign key (web) references web(id);