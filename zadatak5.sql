drop database if exists zadatak5;
create database zadatak5;
use zadatak5;


create table izlozba(
id_izlozba int not null primary key auto_increment,
naziv varchar(50) not null,
vrsta varchar(50) not null,
sponzor int,
kustos int
);

create table dijelo(
id_dijelo int not null primary key auto_increment,
naziv varchar(50) not null,
autor varchar(50) not null,
starost int not null
);

create table kustos(
id_kustos int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null, 
iban varchar(50)
);

create table sponzor(
id_sponzor int not null primary key auto_increment,
ime  varchar(50) not null,
prezime varchar(50) not null,
doniranadijela varchar(200) not null
);

alter table izlozba add foreign key (kustos) references kustos(id_kustos);
alter table izlozba add foreign key (sponzor) references sponzor(id_sponzor);

insert into dijelo(id_dijelo,naziv,autor,starost) values
(null,'Mona Lisa','L.Da Vinci',200),
(null,'The Kiss','Gustav Klimt',120),
(null,'Creation of Adam','Michelangelo',500);

insert into kustos(id_kustos,ime,prezime) values
(null,'Petar','Malinić'),
(null,'Ivan','Molnar'),
(null,'Duje','Dražić');

insert into sponzor(id_sponzor,ime,prezime,doniranadijela) values
(null,'Versailles','-','Mona Lisa'),
(null,'Donald','Trump','The Kiss'),
(null,'Ivica','Todorić','Creation of Adam');

insert into izlozba(id_izlozba,naziv,vrsta,sponzor,kustos) values
(null,'Renesansa','slikarska',1,1),
(null,'Modernizam','kiparska',null,3),
(null,'Apsurdizam','slikarska',null,1);