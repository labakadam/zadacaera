drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table vrtic(
					id				int not null primary key auto_increment,
					ime 		    varchar(50) not null,
					oib 			char(11) not null
);
create table skupina(
					id 				int not null primary key auto_increment,
					dijete			int,
					naziv			varchar(50)
);
create table dijete(
					id 				int not null primary key auto_increment,
					skupina 		int,
					ime 			varchar(50)
);
create table odgajateljica(
					id 				int not null primary key auto_increment,
				    dijete 			int,
					oib 			char(11) not null
);
create table strucnaSprema(
					id 				int not null primary key auto_increment,
					odgajateljica	int,
					ime 			varchar(50)
);

alter table skupina add foreign key (dijete) references vrtic(id);
alter table dijete add foreign key (skupina) references odgajateljica(id);
alter table odgajateljica add foreign key(dijete) references strucnaSprema(id);
alter table odgajateljica add foreign key(dijete) references skupina(id);

insert into vrtic(id,ime,oib) values
(1,'Leptirici',124575896365),
(2,'Krijesnice',124575477885),
(3,'Medvjedici',457856958562);

insert into skupina(id,dijete,naziv) values
(1,null,'Skupina 1'),
(2,null,'Skupina 2'),
(3,null,'Skupina 3');

insert into dijete(id,skupina,ime) values
(1,null,null),
(2,null,null),
(3,null,null);

insert into odgajateljica(id,dijete,oib) values
(1,null,547848569854),
(2,null,847585452145),
(3,null,254887556958);

insert into strucnaSprema(id,odgajateljica,ime) values
(1,null,'Stefani'),
(2,null,'Blazenka'),
(3,null,'Romana');