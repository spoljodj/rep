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
Tip             varchar(255) not null,
Cijena          decimal(18,2) not null,
Opis            text
);

create table shop(
id_shop         int not null primary key auto_increment,
Naziv           varchar(255) not null,
Tip             varchar(255) not null,
Opis            text,
Velicina        varchar(20) not null,
Prodavac        int not null,
Item            int not null
);


alter table shop add foreign key(Prodavac) references prodavac(id_prodavac);
alter table shop add foreign key(Item) references Item(id_item);