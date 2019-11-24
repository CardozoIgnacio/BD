/* Creo base de datos EstacionTerran*/
create database EstacionDefensaPlanetariaTerran


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
    (PK)id_rango: identificador univoco de un rango
    nombre_rango: Cadena de caracteres correspondientes al rango de un soldado
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
    (FK)id_rango: identificador univoco de un rango
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
    (FK)id_zona: Zona donde se encuentra emplazada un canion
    (FK)id_artillero: identificador univoco de un artillero
    municion: Munciones con las que cuenta un canion maximo de 37767
    nombre: Designacion de un canion en string
    
*/
create table CanionXL
(
    id_canion int  identity(1,1),
    id_zona int not null ,
    id_artillero int not null UNIQUE,
    municion smallint not null DEFAULT 32766,
    nombre varchar(50) not null,

    primary key (id_canion),
    foreign key (id_zona) references Zona(id_zona),
    foreign key (id_artillero) references Artillero(id_artillero)

)




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

insert into Artillero values('LEANDRO EMANUEL','ACOSTA',6,'M')
insert into Artillero values('RAMIRA','ADROVER ',9,'F')
insert into Artillero values('JULIAN','ALAMO ',9,'M')
insert into Artillero values('BACA','ARREYES ',6,'F')
insert into Artillero values('FABRICIO','TOMÁS ',9,'M')
insert into Artillero values('VALENTINA','BRAÑA ',9,'F')
insert into Artillero values('FERNANDO','TRINIDAD ',6,'M')
insert into Artillero values('VALENTINA','DESCH ',9,'F')
insert into Artillero values('NICOLAS','DAITTER ',9,'M')
insert into Artillero values('FLORENCIA','FRUTOS ',7,'F')
insert into Artillero values('DIEGO','FUENTES ',9,'M')
insert into Artillero values('PAULA','GARCIA ',7,'F')
insert into Artillero values('SEBASTIAN','GLARIA ',9,'M')
insert into Artillero values('LUCILA','CORREA ',9,'F')
insert into Artillero values('CARLOS','DIAZ ',9,'M')
insert into Artillero values('MARÍA','GONZÁLEZ ',10,'F')
insert into Artillero values('TOMÁS','HUEBRA ',10,'M')
insert into Artillero values('CANDELA','SINIGER ',10,'F')
insert into Artillero values('VALENTÍN','ACOSTA ',10,'M')
insert into Artillero values('ROCIO','SORIA ',11,'F')
insert into Artillero values('MATEO','JUNCA ',11,'M')
insert into Artillero values('SELENE','JUAREZ ',11,'F')
insert into Artillero values('JAVIER','VERA ',11,'M')
insert into Artillero values('BELEN','DORNES ',11,'F')
insert into Artillero values('JOAQUÍN','DE GIUSTI ',11,'M')
insert into Artillero values('MONICA','ELIAS ',11,'F')
insert into Artillero values('MARIANO','GREGORI ',11,'M')
insert into Artillero values('CRUZ','FERRERO ',11,'F')




/*------------------------------------------------*/
/*---------------Carga de datos-------------------*/
/*-------------------Canion-----------------------*/
/*------------------------------------------------*/
 
/*Zona alto valor estrategico*/
insert into CanionXL values(1,1,32766,'Canion N1 ')
insert into CanionXL values(1,2,32766,'Canion N2 ')
insert into CanionXL values(1,3,32766,'Canion N3 ')

insert into CanionXL values(1,4,32766,'Canion N4 ')
insert into CanionXL values(1,5,32766,'Canion N5 ')
insert into CanionXL values(1,6,32766,'Canion N6 ')

insert into CanionXL values(1,7,32766,'Canion N7 ')
insert into CanionXL values(1,8,32766,'Canion N8 ')
insert into CanionXL values(1,9,32766,'Canion N9 ')

/*Zona militarizada*/
insert into CanionXL values(2,10,15000,'Canion N10')
insert into CanionXL values(2,11,15000,'Canion N11')

insert into CanionXL values(2,12,15000,'Canion N12')
insert into CanionXL values(2,13,15000,'Canion N13')

/*Residencias civiles*/
insert into CanionXL values(3,14,5000,'Canion N14')

/*-----------------------------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------------------------*/
/*----------------------------------*PROYECTO FINAL DE CURSADA*----------------------------------*/
/*-----------------------------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------------------------*/

/*--------------------------------------------(-1-)----------------------------------------------*/
/*------------------Lista lo nombre de los artilleros con sueldo menor a 50000-------------------*/
/*-----------------------------------------------------------------------------------------------*/
select Artillero.nombre_artillero as 'Nombre', Artillero.apellido_artillero as 'Apellido',Rango.sueldo as 'Sueldo'
from Artillero,Rango 
where Artillero.id_rango=Rango.id_rango and Rango.sueldo<50000

/*-------------------------------------------(-2-)-----------------------------------------------*/
/*---------------------Calcular el promedio de los sueldos de los artilleros---------------------*/
/*-----------------------------------------------------------------------------------------------*/
select avg(Rango.sueldo ) as 'Promedio de sueldo artilleros'from  Artillero, Rango where Artillero.id_rango=Rango.id_rango
/*Auxiliares para verificar el promedio*/
select count(Rango.sueldo )from  Artillero, Rango where Artillero.id_rango=Rango.id_rango
select sum(Rango.sueldo) from  Artillero, Rango where Artillero.id_rango=Rango.id_rango



/*-------------------------------------------(-3-)-----------------------------------------------*/
/*-----------------------Listar los apellidos que comienzan con la letra d ----------------------*/
/*-----------------------------------------------------------------------------------------------*/
select Artillero.apellido_artillero as 'Apellidos con D' from Artillero where Artillero.apellido_artillero like 'D%'

/*-------------------------------------------(-4-)-----------------------------------------------*/
/*--------------Eliminar todos los registors de la primera zona en la tabla CanionXL-------------*/
/*-----------------------------------------------------------------------------------------------*/
delete from CanionXL where CanionXL.id_zona=1
/*Auxiliar para verificar la correcta eliminacion de los caniones de la zona 1*/
select CanionXL.nombre as 'Nombre canion',CanionXL.id_zona as 'Id zona' from CanionXL

/*-------------------------------------------(-5-)-----------------------------------------------*/
/*--------Mostrar el nombre, apellido , id del Canion y el nombre de la Zona(Solo Zona 2)--------*/
/*-----------------------------------------------------------------------------------------------*/
select Artillero.nombre_artillero as 'Nombre',Artillero.apellido_artillero as 'Apellido',CanionXL.id_canion as 'Id canion' 
from
 (Artillero inner join CanionXL on CanionXL.id_artillero = Artillero.id_artillero) 
where CanionXL.id_zona=2

/*Misma consulta utilizando el nombre del canion en vez del id del canion*/
select Artillero.nombre_artillero as 'Nombre',Artillero.apellido_artillero as 'Apellido',CanionXL.nombre as 'Nombre del canion' 
from
 (Artillero inner join CanionXL on CanionXL.id_artillero = Artillero.id_artillero) 
where CanionXL.id_zona=2




/*--------------------------------------------------------*/
/*------------------Consultas---22/10/19------------------*/
/*--------------------------------------------------------*/

/*Seleccionar elementos*/

select Artillero.nombre_artillero as 'Nombre',Artillero.apellido_artillero as 'Apellido', Artillero.id_rango as 'Id rango',Artillero.sexo as 'Sexo'
from Artillero

select CanionXL.nombre as 'Nombre del canion',CanionXL.municion as 'Municion',CanionXL.id_zona as 'Zona id', CanionXL.id_artillero as 'Identificador Artillero'
from CanionXL

select Rango.nombre_rango as 'Rango', Rango.sueldo as 'Sueldo'
from Rango

select Zona.nombre_zona as 'Nombre de la Zona',Zona.poblacion as 'Poblacion'
from Zona

select Rango.nombre_rango as 'Rango',Artillero.nombre_artillero as 'Nombre',Artillero.apellido_artillero as 'Apellido' 
from Artillero,Rango 
where Artillero.id_rango=Rango.id_rango

select Zona.id_zona as 'Zona Identificacor',CanionXL.nombre as 'Nombre de canion',Artillero.nombre_artillero as 'Nombre',Artillero.apellido_artillero as 'Apellido',Rango.nombre_rango as 'Rango' 
from Artillero,CanionXL,Rango,Zona 
where Zona.id_zona=CanionXL.id_zona and CanionXL.id_artillero=Artillero.id_artillero and Rango.id_rango=Artillero.id_rango

/*select distint*/

select distinct Rango.nombre_rango 
from Rango

select distinct Artillero.nombre_artillero as 'Nombres de artilleros unicos'
from Artillero

select distinct Rango.nombre_rango as 'Rangos asignados a Caniones' 
from Artillero,CanionXL,Rango 
where  CanionXL.id_artillero=Artillero.id_artillero and Rango.id_rango=Artillero.id_rango

/*sin el distinct*/
select  Rango.nombre_rango 
from Artillero,CanionXL,Rango 
where  CanionXL.id_artillero=Artillero.id_artillero and Rango.id_rango=Artillero.id_rango

/*update*/

update Rango set Rango.sueldo=500 where Rango.nombre_rango='Soldado'
