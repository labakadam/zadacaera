drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table salonZaUljepsavanje(
			id 				int not null primary key auto_increment,
			ime 			varchar(50) not null,
			oib            int(11) not null
);
create table djelatnik(
			id 				int not null primary key auto_increment,
			ime 			varchar(50) not null,
			brojUgovora 	int not null,
			salonZaUljepsavanje int
);
create table korisnik(
			id 				int not null primary key auto_increment,
			usluga		    int,
			djelatnik       int
);			
create table posjeta(
			id 				int not null primary key auto_increment,
			vrijeme 		datetime not null,
			korisnik 		int not null,
			djelatnik       int
);
create table usluga(
			id 				int not null primary key auto_increment,
			korisnik		int not null,
			cijena 			decimal(18,2) not null
);

alter table djelatnik add foreign key (salonZaUljepsavanje) references salonZaUljepsavanje(id);
alter table korisnik add foreign key (djelatnik) references djelatnik(id);
alter table posjeta add foreign key (korisnik) references korisnik(id);
alter table korisnik add foreign key (usluga) references usluga(id);


insert into salonZaUljepsavanje(id,ime,oib) values
(1,'Kod Ane',12545896523),
(2,'Salon Betty',14589745869),
(3,'Nokti Nika',87547748569);

insert into djelatnik(id,ime,brojUgovora,salonZaUljepsavanje) values
(1,'Ana',55236,null),
(2,'Josipa',58736,null),
(3,'Marina',96236,null);

insert into korisnik(id,usluga,djelatnik) values
(1,null,null),
(2,null,null),
(3,null,null);

insert into posjeta(id,vrijeme,korisnik,djelatnik) values
(1,'2018-11-10 12:00:00',1,null),
(2,'2018-11-10 13:00:00',2,null),
(3,'2018-11-10 12:30:00',3,null);

insert into usluga(id,korisnik,cijena) values
(1,1,'20.00'),(2,2,'25.00'),(3,3,'20.00');

