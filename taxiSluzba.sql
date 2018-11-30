drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table taxiSluzba(
id int not null primary key auto_increment,
naziv varchar(50),
oib char(11) not null,
vozilo int not null
);
create table vozilo(
id int not null primary key auto_increment,
oznaka int not null,
vozac int not null,
brojMjesta int not null
);
create table vozac(
id int not null primary key auto_increment,
ime varchar(50),
brojUgovora int not null,
brojMobitela int not null
);
create table putnik(
id int not null primary key auto_increment,
voznja int not null,
mobitel int not null,
vrijemeVoznje datetime,
cijenaVoznje int
);
create table voznja(
id int not null primary key auto_increment,
datum datetime not null,
putnik int not null,
vozilo int not null,
vozac int not null
);


alter table vozilo add foreign key (vozac) references taxiSluzba(id);
alter table voznja add foreign key (vozilo) references vozilo(id);
alter table voznja add foreign key (vozac) references vozac(id);
alter table voznja add foreign key (putnik) references putnik(id);
alter table putnik add foreign key (voznja) references vozac(id);

insert into taxiSluzba values
(1,'Beljan taxi','12345879658',201),(2,'Ljubas taxi','12345855658',202),(3,'Osijek taxi','21458756895',203);
insert into vozilo values
(1,10,1,4),(2,11,2,4),(3,12,3,7);
insert into vozac values(1,'slavko',51,091757856),(2,'milivoj',52,098547851),(3,'antimon',53,098758621443);