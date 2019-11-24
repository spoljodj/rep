drop database if exists zavrsnirad;
create database zavrsnirad default character set utf8;
#c:\xampp\mysql\bin\mysql.exe -uedunova -pedunova --default_character_set=utf8 < d:\zavrsnirad.sql
use zavrsnirad;

create table prodavac(
id_prodavac     int not null primary key auto_increment,
Ime             varchar(50) not null,
Prezime         varchar(50),
Rasa            varchar(20) not null,
Dob             varchar(10),
Opis            text
);

create table item(
id_item         int not null primary key auto_increment,
Naziv           varchar(255) not null,
Tip             int not null,
Cijena          decimal(18,2) not null,
Opis            text not null
);

create table Tip(
id_tip              int not null primary key auto_increment,
Naziv_tipa          varchar(20) not null,
Statistika_itema    varchar (100) not null
);

create table naziv_shopa(
id_naziv        int not null primary key auto_increment,
Naziv           varchar(100) not null
);

create table shop(
Naziv           int not null,
Tip             varchar(255) not null,
Velicina        varchar(20)not null,
Opis_shopa      text not null,
Prodavac        int not null,
Item            int not null
);

alter table item add foreign key(Tip) references Tip(id_tip);

alter table shop add foreign key(Prodavac) references prodavac(id_prodavac);
alter table shop add foreign key(Item) references Item(id_item);
alter table shop add foreign key(Naziv) references naziv_shopa(id_naziv);
