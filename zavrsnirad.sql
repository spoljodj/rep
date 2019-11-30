drop database if exists zavrsnirad;
create database zavrsnirad default character set utf8;
#c:\xampp\mysql\bin\mysql.exe -uedunova -pedunova --default_character_set=utf8 < d:\zavrsnirad.sql
use zavrsnirad;

create table shopkeeper(
Shopkeeper_id          int not null primary key auto_increment,
First_name             varchar(50) not null,
Last_name              varchar(50) not null,
Race                   varchar(20) not null,
Age                    varchar(10),
Description            text
);

create table item(
Item_id         int not null primary key auto_increment,
Name            varchar(255) not null,
Type            varchar(50) not null,
Cost            decimal(18,2) not null,
Description     text not null,
Rarity          varchar(20) not null
);


create table shop(
Shop_id         int not null primary key auto_increment,
S_name          varchar(50) not null,
Type            varchar(50) not null,
S_size          varchar(20)not null,
S_description   text not null,
shopkeeper      int not null
);

create table generated(
shop        int not null,
item        int not null
);

alter table shop add foreign key(shopkeeper) references shopkeeper(Shopkeeper_id);

alter table generated add foreign key(shop) references shop(Shop_id);
alter table generated add foreign key(item) references item(Item_id);

