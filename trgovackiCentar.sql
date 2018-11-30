drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19; 
create table centar(
id int not null primary key auto_increment,
ime varchar(50) not null,
oib char(11)
);
create table trgovina(
id int not null primary key auto_increment,
centar int not null,
ime varchar(50)
);
create table sef(
id int not null primary key auto_increment,
ime varchar(50) not null,
oib char(11)
);
create table osoba(
id int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null
);
create table twain(
sef int not null,
osoba int not null,
trgovina int not null
);
alter table trgovina add foreign key (centar) references centar(id);
alter table twain add foreign key (trgovina) references trgovina(id);
alter table twain add foreign key (sef) references sef(id);
alter table twain add foreign key (osoba) references osoba(id);
insert into centar(id,ime,oib) values(1,'esseker centar',null);
insert into trgovina(id,centar,ime) values(1,1,'sport shop');
insert into sef(id,ime,oib) values(1,'snjezana',null);
insert into osoba(id,ime,prezime) values(1,'stefan','markovic');
insert into twain(sef,osoba,trgovina) values(1,1,1);