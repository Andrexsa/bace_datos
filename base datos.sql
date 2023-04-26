create database citas;

use citas;

create table Rol(
TipoRol varchar(10) primary key not null
);

create table Usuario(
Id int (12) primary key not null,
nombre varchar (20),
tipo_rol_fk varchar(10)
);



create table paciente (
Id int (11) primary key not null,
nombrePac varchar(20),
apellido varchar(20),
email varchar(30),
telefono int(12),
id_fk int(11)
);
drop table clinica;
create table Doctor (
id int(11) primary key not null,
nombreDoc varchar(20),
apellido varchar(20),
email varchar(30),
Id_fk int (12)
);

create table historiaClinica(
historialPac varchar(50) primary key not null,
registro_Citas varchar(50),
id_fk int(11)
);

create table clinica(
id_cli int(20) primary key,
direccion varchar(20),
nombreCli varchar(20),
ciudad varchar(20),
localidad varchar(20)
);

create table cita(
id int(20) primary key not null,
fecha date ,
direccion varchar(20),
nombreDoc_fk varchar(20),
nombrePac_fk varchar(20)
);


create table horario(
id_horario int(11) primary key auto_increment not null,
dia date,
hora int
);

ALTER TABLE citas.cita 
ADD CONSTRAINT TipoRol
  FOREIGN KEY (id)
  REFERENCES citas.usuario (Id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

INSERT INTO `citas`.`cita` (`id`, `fecha`, `direccion`, `nombreDoc_fk`, `nombrePac_fk`) VALUES ('1', '26/04/23', 'cra19#', 'nombre1', 'nombre1.1');
INSERT INTO `citas`.`cita` (`id`, `fecha`, `direccion`, `nombreDoc_fk`, `nombrePac_fk`) VALUES ('2', '26/04/23', 'cra20#', 'nombre2', 'nombre2.2');
INSERT INTO `citas`.`cita` (`id`, `fecha`, `direccion`, `nombreDoc_fk`, `nombrePac_fk`) VALUES ('3', '26/04/23', 'cra21#', 'nombre3', 'nombre3.3');
INSERT INTO `citas`.`cita` (`id`, `fecha`, `direccion`, `nombreDoc_fk`, `nombrePac_fk`) VALUES ('4', '26/04/23', 'cra22#', 'nombre4', 'nombre4.4');
INSERT INTO `citas`.`cita` (`id`, `fecha`, `direccion`, `nombreDoc_fk`, `nombrePac_fk`) VALUES ('5', '26/04/23', 'cra23#', 'nombre5', 'nombre5.5');
INSERT INTO `citas`.`cita` (`id`, `fecha`, `direccion`, `nombreDoc_fk`, `nombrePac_fk`) VALUES ('6', '26/04/23', 'cra24#', 'nombre6', 'nombre6.6');
INSERT INTO `citas`.`cita` (`id`, `fecha`, `direccion`, `nombreDoc_fk`, `nombrePac_fk`) VALUES ('7', '26/04/23', 'cra25#', 'nombre7', 'nombre7.7');
INSERT INTO `citas`.`cita` (`id`, `fecha`, `direccion`, `nombreDoc_fk`, `nombrePac_fk`) VALUES ('8', '26/04/23', 'cra26#', 'nombre8', 'nombre8.8');
INSERT INTO `citas`.`cita` (`id`, `fecha`, `direccion`, `nombreDoc_fk`, `nombrePac_fk`) VALUES ('9', '26/04/23', 'cra27#', 'nombre9', 'nombre9.9');
INSERT INTO `citas`.`cita` (`id`, `fecha`, `direccion`, `nombreDoc_fk`, `nombrePac_fk`) VALUES ('10', '26/04/23', 'cra28#', 'nombre10', 'nombre10.1');


/*consultar cambiando el encabezado*/
INSERT INTO `citas`.`usuario` (`Id`, `nombre`, `tipo_rol_fk`) VALUES ('1', 'nombre1', '1');
INSERT INTO `citas`.`usuario` (`Id`, `nombre`, `tipo_rol_fk`) VALUES ('2', 'nombre2', '2');
INSERT INTO `citas`.`usuario` (`Id`, `nombre`, `tipo_rol_fk`) VALUES ('3', 'nombre3', '3');
INSERT INTO `citas`.`usuario` (`Id`, `nombre`, `tipo_rol_fk`) VALUES ('4', 'nombre4', '4');
INSERT INTO `citas`.`usuario` (`Id`, `nombre`, `tipo_rol_fk`) VALUES ('5', 'nombre5', '5');
INSERT INTO `citas`.`usuario` (`Id`, `nombre`, `tipo_rol_fk`) VALUES ('6', 'nombre6', '6');
INSERT INTO `citas`.`usuario` (`Id`, `nombre`, `tipo_rol_fk`) VALUES ('7', 'nombre7', '7');
INSERT INTO `citas`.`usuario` (`Id`, `nombre`, `tipo_rol_fk`) VALUES ('8', 'nombre8', '8');
INSERT INTO `citas`.`usuario` (`Id`, `nombre`, `tipo_rol_fk`) VALUES ('9', 'nombre9', '9');
INSERT INTO `citas`.`usuario` (`Id`, `nombre`, `tipo_rol_fk`) VALUES ('10', 'nombre10', '10');

/*consultar cambiando el encabezado del campo*/
alter table usuario change nombre nombre_usua varchar (20);
alter table rol change TipoRol rolTipo varchar(10);
alter table paciente change email email_pac varchar(30);
alter table horario change dia dia_ho date;
alter table historiaclinica change registro_Citas citas_registro varchar(50);
alter table doctor change apellido apellido_doc varchar (20);
alter table clinica change direccion direccion_clin varchar (20);
alter table cita change direccion direccion_cit varchar (20);

/*traer los primeros 5 registros */
select * from usuario order by nombre_usua asc limit 5;
select * from rol order by rolTipo asc limit 5;
select * from paciente order by apellido asc limit 5;
select * from horario order by dia asc limit 5;
select * from historiaclinica order by registro_Citas asc limit 5;
select * from doctor order by apellido_doc asc limit 5;
select * from clinica order by nombreCli asc limit 5;
select * from cita order by direccion_cit asc limit 5;

/*contar cuantos registros tienen un id */
select Id from usuario where Id % 2 = 0 ;
select rolTipo from ROL where rolTipo % 2 = 0 ;
select Id from paciente where Id % 2 = 0 ;
select id_horario from horario where id_horario % 2 = 0 ;
select historialPac from historiaclinica where historialPac % 2 = 0 ;
select id_horario from horario where id_horario % 2 = 0 ;
select Id from doctor where Id % 2 = 0 ;
select id_cli from clinica where id_cli % 2 = 0 ;
select id_cli from cita where id_cli % 2 = 0 ;

/*realizar una sub consulta 2 tablas en 1*/
select * from usuario inner join rol ;
select * from paciente inner join horario ;
select * from historiaclinica inner join doctor ;
select * from clinica inner join cita ;

