drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table dvd(
		id 		int not null primary key auto_increment,
		ime 	varchar(50) not null,
		oib 	char(11)
);
create table web(
		id 				int not null primary key auto_increment,
		korisnik		int not null,
		posluzitelj 	int not null,
		dvd 			int not null
 );
 create table posjetitelj(
	    id 				int not null primary key auto_increment,
	    oib 			char(11),
	    ime 			varchar(50)
);
create table posluzitelj(
		id 				int not null primary key auto_increment,
		oib 			char(11),
		ime 			varchar(50)
);

alter table web add foreign key (dvd) references dvd(id);
alter table web add foreign key (korisnik) references korisnik(id);
alter table web add foreign key (posluzitelj) references posluzitelj(id);
