drop database if exists edunovaj19;
create database edunovaj19 character set utf8 collate utf8_general_ci;
# mysql -uedunova -pedunova --default_character_set=utf8 < f:\skriptaj19.sql
use edunovaj19;
create table smjer(
	sifra 		int not null primary key auto_increment,
	naziv 		varchar(50) not null,
	trajanje 	int not null,
	cijena 		decimal(18,2) not null,
	upisnina 	decimal(18,2) not null,
	verificiran boolean not null  
);

create table grupa(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
smjer int not null,
predavac int,
brojpolaznika int not null,
datumpocetka datetime
);

create table predavac(
sifra int not null primary key auto_increment,
osoba int not null,
iban char(21)
);

create table polaznik(
sifra int not null primary key auto_increment,
osoba int not null,
brojugovora varchar(20)
);


create table osoba(
sifra int not null primary key auto_increment,
oib char(11),
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar(100) not null
);

create table clan(
grupa int not null,
polaznik int not null
);


alter table grupa add foreign key (smjer) references smjer(sifra); 
alter table grupa add foreign key (predavac) references predavac(sifra);

alter table predavac add foreign key (osoba) references osoba(sifra);

alter table polaznik add foreign key (osoba) references osoba(sifra);

alter table clan add foreign key (grupa) references grupa(sifra);
alter table clan add foreign key (polaznik) references polaznik(sifra);


#loš
#1
insert into smjer values (null,'Java programiranje',130,3999.99,500,true);

#najbolji
#2
insert into smjer (sifra,naziv,trajanje,cijena,upisnina,verificiran)
values (null,'Web programiranje',130,4200,400,false);

#bolji
#1
insert into osoba (ime,prezime,email) values 
('Tomislav','Jakopec','tjakopec@gmail.com');

#bolji
#2
insert into osoba(prezime,ime,oib,email)
values ('Andračić','Majkl',null,'majkl.andracic@gmail.com'); 

#3-16
insert into osoba (sifra,oib,ime,prezime,email) values
(null,null,'Tomislav', 'Bekavac', 'bekavac.tomislav1994@gmail.com'),
(null,null,'Slaven', 'Birtić', 'slaven.birtic@gmail.com'),
(null,null,'Adam', 'Labak', 'labakadam1993@gmail.com'),
(null,null,'Dominik', 'Moguš', 'mogusd97@gmail.com'),
(null,null,'Ivan', 'Radunković', 'ivan1501@gmail.com'),
(null,null,'Ivan', 'Šolić', 'aurumaureo@gmail.com'),
(null,null,'Danijel', 'Djanić', 'danijeldjanic@gmail.com'),
(null,null,'Hrvoje', 'Šarić', 'hrvoje.saric93@gmail.com'),
(null,null,'Marko', 'Herek', 'markosolarcro@gmail.com'),
(null,null,'Josip', 'Tisaj', 'josip.tisaj00@gmail.com'),
(null,null,'Mirza', 'Delagić', 'mirza.delagic@gmail.com'),
(null,null,'Matko', 'Bošnjaković', 'matko.bosnjakovic@gmail.com'),
(null,null,'Doris', 'Zentner', 'dzentner208@gmail.com'),
(null,null,'Barbara', 'Radić', 'radicbarb@gmail.com');

#1
insert into predavac (sifra,osoba,iban) values (null,1,null);

#1-15
insert into polaznik (sifra,osoba,brojugovora) values
(null,2,null),(null,3,null),(null,4,null),(null,5,null),(null,6,null),(null,7,null),(null,8,null),(null,9,null),(null,10,null),(null,11,null),(null,12,null),(null,13,null),(null,14,null),(null,15,null),(null,16,null);

#1-2
insert into grupa (sifra,naziv,smjer,predavac,brojpolaznika,datumpocetka) values
(null,'J19',1,1,20,'2018-10-29'),
(null,'PP18',2,1,20,'2018-10-29');

insert into clan (grupa,polaznik) values
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15);








