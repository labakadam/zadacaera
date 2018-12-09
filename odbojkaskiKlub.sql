drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table odbojskaskiKlub(
id int not null primary key auto_increment,
naziv varchar(50),
igrac int not null,
gost int not null,
sponzor int not null
);
create table mreznoMjesto(
id int not null primary key auto_increment,
naziv varchar(50),
clan varchar(50)
);
create table utakmica(
id int not null primary key auto_increment,
mreznoMjesto int not null,
vrijeme datetime
);
create table vijest(
id int not null primary key auto_increment,
mreznoMjesto int not null,
vrijeme datetime
);
create table igrac(
id int not null primary key auto_increment,
mreznoMjesto int not null,
odbojskaskiKlub int not null,
ime varchar(50),
prezime varchar(50)
);
create table sponzor(
id int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50),
mobitel int
);
create table gost(
id int not null primary key auto_increment,
mreznoMjesto int not null,
odbojskaskiKlub int not null,
ime varchar(50),
prezime varchar(50)
);
create table odbojskaskiKlubMreznoMjesto(
odbojskaskiKlub int not null,
mreznoMjesto int not null
);
create table odbojskaskiKlubSponzor(
odbojskaskiKlub int not null,
sponzor int not null
);
create table mreznoMjestoIgrac(
mreznoMjesto int not null,
igrac int not null
);
alter table gost add foreign key (odbojskaskiKlub) references odbojskaskiKlub(id);
alter table gost add foreign key (mreznoMjesto) references mreznoMjesto(id);
alter table utakmica add foreign key (mreznoMjesto) references mreznoMjesto(id);
alter table vijest add foreign key (mreznoMjesto) references mreznoMjesto(id);
alter table mreznoMjestoIgrac add foreign key (mreznoMjesto) references mreznoMjesto(id);
alter table mreznoMjestoIgrac add foreign key (igrac) references igrac(id);
alter table odbojskaskiKlubSponzor add foreign key (sponzor) references sponzor(id);
alter table odbojskaskiKlubSponzor add foreign key (odbojskaskiKlub) references odbojskaskiKlub(id);
alter table odbojskaskiKlubMreznoMjesto add foreign key (odbojskaskiKlub) references odbojskaskiKlub(id);
alter table odbojskaskiKlubMreznoMjesto add foreign key (mreznoMjesto) references mreznoMjesto(id);
alter table igrac add foreign key (odbojskaskiKlub) references odbojskaskiKlub(id);