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
		posjetitelj		int,
		posluzitelj 	int,
		dvd 			int
 );
 create table posjetitelj(
	    id 				int not null primary key auto_increment,
	    oib 			char(11),
	    ime 			varchar(50)
);
create table posluzitelj(
		id 				int not null primary key auto_increment,
		oib 			char(11),
		web			    int
);

alter table web add foreign key (dvd) references dvd(id);
alter table web add foreign key (posjetitelj) references posjetitelj(id);
alter table posluzitelj add foreign key (web) references web(id);

insert into dvd(id,ime,oib) values
(1,'DVD Josipovac',null),
(2,'DVD Gorjani',null),
(3,'DVD Tomasanci',null);

insert into web(id,posjetitelj,posluzitelj,dvd) values
(1,null,null,null),
(3,null,null,null),
(2,null,null,null);

insert into posjetitelj(id,oib,ime) values
(1,null,null),
(2,null,null),
(3,null,null);
 insert into posluzitelj(id,oib,web) values
 (1,null,null),
 (2,null,null),
 (3,null,null);
