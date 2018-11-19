drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table udruga(
				id 				int not null primary key auto_increment,
				oib 			varchar(11) not null,
				djelatnik 		int
);
create table djelatnik(
				id 				int not null primary key auto_increment,
				sticenik 		int,
				oib 			varchar(11)
);
create table sticenik(
				id 				int primary key auto_increment,
				oznaka 			int not null,
				udruga 			int not null,
				djelatnik 		int 
);
create table prostor(
				id 				int primary key auto_increment,
				oznaka 			int not null,
				djelatnik		int not null
);

alter table djelatnik add foreign key (sticenik) references udruga(id);
alter table sticenik add foreign key (djelatnik) references djelatnik(id);
alter table sticenik add foreign key (djelatnik) references prostor(id);

insert into udruga(id,oib,djelatnik) values
(1,2514896698,null),
(2,5478455245,null),
(3,1477458478,null);

insert into djelatnik(id,sticenik,oib) values
(1,1, null),
(2,2,null),
(3,3,null);

insert into sticenik(id,oznaka,udruga,djelatnik) values
(1,55,1,null),
(3,56,2,null),
(2,87,3,null);

insert into prostor(id,oznaka,djelatnik) values
(1,20,1),
(2,25,2),
(3,30,3);