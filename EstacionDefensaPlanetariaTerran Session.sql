/* Creo base de datos EstacionTerran*/
create database EstacionDefensaPlanetariaTerran

/*Creo la tabla Planet
    (PK)id_planeta: Identificador univoco de un Planeta
    nombre_planeta: Nombre del planeta

create table Planeta(
    id_planteta int identity(1,1),
    nombre_planeta varchar(50) not null,
    
    primary key (id_planteta)
)
*/


/*Creo la tabla Zona
    (PK)id_zona:Identificador univoco de una Zona
    nombre_zona : Nombre correspondiente a la Zona
    poblacion : Cantidad de personas civiles q viven en esa zona
*/
create table Zona(
    id_zona int  identity(1,1),
    nombre_zona varchar(50) not null,
    poblacion int not null,
    
    primary key (id_zona)
)


/*Creo la tabla Rango
    (PK)nombre_rango: Cadena de caracteres correspondientes al rango de un soldado
    suelod: cantidad de dinero que le paga el Dominio
*/
create table Rango
(
    id_rango int identity(1,1),
    nombre_rango varchar(25)not null UNIQUE,
    sueldo money not null,

    primary key (id_rango)
)

/*Creo la tabla artillero
    (PK)id_artillero: Identificador univoca de una artillero
    nombre_artillero
    apellido_artillero
    id_rango: identificador univoco de un artillero
    sexo del artillero F o M
    
*/
create table Artillero
(
    id_artillero int identity(1,1),
    nombre_artillero varchar(50) not null,
    apellido_artillero varchar(60) not null,
    id_rango int not null ,    
    sexo varchar(1) check(sexo in ('F','M')),
    
    primary key (id_artillero),
    foreign key (id_rango) references Rango(id_rango)

)


/*Creo la tabla cañones
    (PK)id_canion: Identificador univoco de un canion
    id_zona: Zona donde se encuentra emplazada un canion
    id_artillero: identificador univoco de un artillero
    municion: Munciones con las que cuenta un canion maximo de 37767
    
*/
create table CanionXL
(
    id_canion int  identity(1,1),
    id_zona int not null ,
    id_artillero int not null UNIQUE,
    municion smallint not null DEFAULT 32766,

    primary key (id_canion),
    foreign key (id_zona) references Zona(id_zona),
    foreign key (id_artillero) references Artillero(id_artillero)

)


/*Sistema de defensa
    id_zona: identificador de una zona
    id_canion1: identificador de una canion
    id_artillero1_canion1: identificador de una artillero
    id_artillero2_canion1: identificador de una artillero

    (PK) id_sistema_defensa : Identificador univoco del sistema de defensa

create table Sistema_Defensa(
    
    id_zona int,
    id_canion1 int  ,      
    id_artillero1_canion1 int ,
    id_artillero2_canion1 int ,
    id_sistema_defensa int identity(1,1),
   
    primary key (id_sistema_defensa),
    foreign key(id_artillero2_canion1) references Artillero(id_artillero),
    foreign key (id_artillero2_canion1)references Artillero(id_artillero),
    foreign key (id_canion1) references CanionXL(id_canion),
    foreign key (id_zona) references Zona(id_zona)
)

*/

/*------------------------------------------------*/
/*---------------Carga de datos-------------------*/
/*--------------------Zona------------------------*/
/*------------------------------------------------*/

/*Zona alto valor estrategico*/
insert into Zona values ('Alpha',5000)

/*Zona militarizada*/
insert into Zona values ('Omega',8000)

/*Residencias civiles*/
insert into Zona values ('Beta',10000)


/*------------------------------------------------*/
/*---------------Carga de datos-------------------*/
/*--------------------Rango-----------------------*/
/*------------------------------------------------*/

insert into Rango values('Capitan General',70000)
insert into Rango values('General Ejercito',60000)
insert into Rango values('Coronel',50000)
insert into Rango values('Teniente-Coronel',40000)
insert into Rango values('Mayor',30000)
insert into Rango values('Capitan',20000)
insert into Rango values('Teniente',10000)
insert into Rango values('Sub-oficial-Mayor',5000)
insert into Rango values('Sub-oficial',4000)
insert into Rango values('Cabo',2000)
insert into Rango values('Soldado',1000)


/*------------------------------------------------*/
/*---------------Carga de datos-------------------*/
/*------------------Artillero---------------------*/
/*------------------------------------------------*/

insert into Artillero values('Nombre-01','Apellido-01 ',6,'M')
insert into Artillero values('Nombre-02','Apellido-02 ',9,'F')
insert into Artillero values('Nombre-03','Apellido-03 ',9,'M')
insert into Artillero values('Nombre-04','Apellido-04 ',6,'F')
insert into Artillero values('Nombre-05','Apellido-05 ',9,'M')
insert into Artillero values('Nombre-06','Apellido-06 ',9,'F')
insert into Artillero values('Nombre-07','Apellido-07 ',6,'M')
insert into Artillero values('Nombre-08','Apellido-08 ',9,'F')
insert into Artillero values('Nombre-09','Apellido-09 ',9,'M')
insert into Artillero values('Nombre-10','Apellido-10 ',7,'F')
insert into Artillero values('Nombre-11','Apellido-11 ',9,'M')
insert into Artillero values('Nombre-12','Apellido-12 ',7,'F')
insert into Artillero values('Nombre-13','Apellido-13 ',9,'M')
insert into Artillero values('Nombre-14','Apellido-14 ',9,'F')
insert into Artillero values('Nombre-15','Apellido-15 ',9,'M')
insert into Artillero values('Nombre-16','Apellido-16 ',10,'F')
insert into Artillero values('Nombre-17','Apellido-17 ',10,'M')
insert into Artillero values('Nombre-18','Apellido-18 ',10,'F')
insert into Artillero values('Nombre-19','Apellido-19 ',10,'M')
insert into Artillero values('Nombre-20','Apellido-20 ',11,'F')
insert into Artillero values('Nombre-21','Apellido-21 ',11,'M')
insert into Artillero values('Nombre-22','Apellido-22 ',11,'F')
insert into Artillero values('Nombre-23','Apellido-23 ',11,'M')
insert into Artillero values('Nombre-24','Apellido-24 ',11,'F')
insert into Artillero values('Nombre-25','Apellido-25 ',11,'M')
insert into Artillero values('Nombre-26','Apellido-26 ',11,'F')
insert into Artillero values('Nombre-27','Apellido-27 ',11,'M')
insert into Artillero values('Nombre-28','Apellido-28 ',11,'F')




/*------------------------------------------------*/
/*---------------Carga de datos-------------------*/
/*-------------------Canion-----------------------*/
/*------------------------------------------------*/
 /*(PK)id_canion: Identificador univoco de un canion
    id_zona: Zona donde se encuentra emplazada un canion
    id_artillero: identificador univoco de un artillero
    municion: Munciones con las que cuenta un canion maximo de 37767
    
Zona alto valor estrategico*/
insert into CanionXL values(1,1,32766)
insert into CanionXL values(1,2,32766)
insert into CanionXL values(1,3,32766)

insert into CanionXL values(1,4,32766)
insert into CanionXL values(1,5,32766)
insert into CanionXL values(1,6,32766)

insert into CanionXL values(1,7,32766)
insert into CanionXL values(1,8,32766)
insert into CanionXL values(1,9,32766)

/*Zona militarizada*/
insert into CanionXL values(2,10,15000)
insert into CanionXL values(2,11,15000)

insert into CanionXL values(2,12,15000)
insert into CanionXL values(2,13,15000)

/*Residencias civiles*/
insert into CanionXL values(3,14,5000)








/*------------------------------------------------*/
/*---------------Carga de datos-------------------*/
/*-------------Sistema de defensa-----------------*/
/*------------------------------------------------*/

/*Zona Alpha alto valor estrategico
insert into Sistema_Defensa values (1,1,1,2)
insert into Sistema_Defensa values (1,2,2,3)
insert into Sistema_Defensa values (1,3,4,5)
insert into Sistema_Defensa values (1,4,6,7)
insert into Sistema_Defensa values (1,5,8,9)
insert into Sistema_Defensa values (1,6,10,11)
insert into Sistema_Defensa values (1,7,12,13)
insert into Sistema_Defensa values (1,8,14,15)
insert into Sistema_Defensa values (1,9,16,17)

/*Zona Omega, zona miliatizada
insert into Sistema_Defensa values (2,10,18,19)
insert into Sistema_Defensa values (2,11,20,21)
insert into Sistema_Defensa values (2,12,22,23)
insert into Sistema_Defensa values (2,13,24,25)


/*Zona Beta, Zona civil
insert into Sistema_Defensa values (3,14,26,27)
*/



/*------------------------------------------------*/
/*---------------Consultas------------------------*/
/*------------------------------------------------*/

/*Seleccionar elementos*/

select Artillero.nombre_artillero,Artillero.apellido_artillero from Artillero

select Rango.nombre_rango,Artillero.nombre_artillero,Artillero.apellido_artillero from Artillero,Rango where Artillero.id_rango=Rango.id_rango

select Zona.id_zona,CanionXL.id_canion,Rango.nombre_rango,Artillero.nombre_artillero,Artillero.apellido_artillero from Artillero,CanionXL,Rango,Zona where Zona.id_zona=CanionXL.id_zona and CanionXL.id_artillero=Artillero.id_artillero and Rango.id_rango=Artillero.id_rango

/*select distint*/

select distinct Rango.nombre_rango from Rango

select distinct Artillero.nombre_artillero from Artillero

select distinct Rango.nombre_rango from Artillero,CanionXL,Rango where  CanionXL.id_artillero=Artillero.id_artillero and Rango.id_rango=Artillero.id_rango

select  Rango.nombre_rango from Artillero,CanionXL,Rango where  CanionXL.id_artillero=Artillero.id_artillero and Rango.id_rango=Artillero.id_rango

/*update*/

update Rango set Rango.sueldo=500 where Rango.nombre_rango='Soldado'


/*Proyecto final de cursada*/


select Rango.nombre_rango,Artillero.nombre_artillero, Artillero.apellido_artillero from Artillero,Rango where Artillero.id_rango<=Rango.id_rango and Rango.sueldo<5000





