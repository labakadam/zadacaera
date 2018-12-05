drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table vodoinstalater(
id int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50)
);
create table kvar(
id int not null primary key auto_increment,
vodoinstalater int not null,
popravak int not null
);
create table instalacija(
id int not null primary key auto_increment,
kvar int not null,
naziv varchar(50)
);
create table popravak(
id int not null primary key auto_increment,
kvar int not null,
segrt int not null
);
create table segrt(
id int not null primary key auto_increment,
popravak int not null,
ime varchar(50),
prezime varchar(50)
);
create table segrtVodoinstalater(
vodoinstalater int not null,
segrt int not null
);
alter table kvar add foreign key (vodoinstalater) references vodoinstalater(id);
alter table kvar add foreign key (popravak) references popravak(id);
alter table instalacija add foreign key (kvar) references kvar(id);
alter table popravak add foreign key (kvar) references kvar(id);
alter table popravak add foreign key (segrt) references segrt(id);
alter table segrtVodoinstalater add foreign key (vodoinstalater) references vodoinstalater(id);
alter table segrtVodoinstalater add foreign key (segrt) references segrt(id);
