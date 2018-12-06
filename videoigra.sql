drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table videoigra(
id int not null primary key auto_increment,
naziv varchar(50) not null,
text varchar(200)
);
create table webSite(
id int not null primary key auto_increment,
naziv varchar(50) not null,
text varchar(200)
);
create table korisnik(
id int not null primary key auto_increment,
webSite int not null,
ime varchar(50),
prezime varchar(50),
videoigra int not null
);
create table informacija(
id int not null primary key auto_increment,
webSite int not null,
text varchar(200)
);
create table komentar(
id int not null primary key auto_increment,
korisnik int not null,
text varchar(200),
webSite int not null 
);
create table webSiteVideoigra(
webSite int not null,
videoigra int not null
);
create table korisnikInformacija(
korisnik int not null,
informacija int not null
);
alter table korisnik add foreign key (videoigra) references videoigra(id);
alter table korisnik add foreign key (webSite) references webSite(id);
alter table informacija add foreign key (webSite) references webSite(id);
alter table komentar add foreign key (korisnik) references korisnik(id);
alter table webSiteVideoigra add foreign key (videoigra) references videoigra(id);
alter table webSiteVideoigra add foreign key (webSite) references webSite(id);
alter table korisnikInformacija add foreign key (korisnik) references korisnik(id);
alter table korisnikInformacija add foreign key (informacija) references informacija(id);
alter table komentar add foreign key (webSite) references webSite(id);

