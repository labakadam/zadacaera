drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table nakladnik(
id int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50),
mjesto int not null
);
create table djelo(
id int not null primary key auto_increment,
naslov varchar(50) not null,
godinaIzdanja datetime
);
create table nakladnikDjelo(
nakladnik int not null,
djelo int not null
);
create table mjesto(
id int not null primary key auto_increment,
naziv varchar(50)
);
alter table nakladnik add foreign key (mjesto) references mjesto(id);
alter table nakladnikDjelo add foreign key (nakladnik) references nakladnik(id);
alter table nakladnikDjelo add foreign key (djelo) references djelo(id);
