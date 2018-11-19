drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table samostan(
id int not null primary key auto_increment,
ime varchar(50),
oib char(11)
);
create table svecenik(
id int not null primary key auto_increment,
ime varchar(50),
oib char(11),
samostan int not null,
biskup int not null
);
create table posao(
id int not null primary key auto_increment,
naziv varchar(50),
vrijeme datetime
);
create table biskup(
id int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50)
);
create table twain(
posao int not null,
svecenik int not null
);

alter table svecenik add foreign key (samostan) references samostan(id);
alter table twain add foreign key (svecenik) references posao(id);
alter table twain add foreign key (posao) references svecenik(id);
alter table svecenik add foreign key (biskup) references biskup(id);

insert into samostan(id,ime,oib) values
(1,null,null);

insert into biskup(id,ime,prezime) values
(1,null,null),
(2,null,null),
(3,null,null);

insert into svecenik(id,ime,oib,samostan,biskup) values
(1,null,null,1,1),
(2,null,null,1,2),
(3,null,null,1,3);

insert into posao(id,naziv,vrijeme) values
(1,null,null),
(2,null,null),
(3,null,null);

insert into twain(posao,svecenik) values
(1,1),
(2,2),
(3,3);

