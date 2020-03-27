create database Planilla_Bd;

use Planilla_Bd;
create table puesto_8008(
codigo_puesto varchar(5),
nombre_puesto varchar(60),
estatus_puesto varchar(1),
Primary key (codigo_puesto)

)Engine= InnoDB, default char set= latin1;
create table departamento_8008(
codigo_departamento varchar(5),
nombre_departamento varchar(60),
estatus_departamento varchar(1),
Primary key (codigo_departamento)

)Engine= InnoDB, default char set= latin1;
create table empleado_8008(
codigo_empleado varchar(5),
nombre_empleado varchar(60),
codigo_puesto varchar(5),
codigo_departamento varchar(5),
sueldo_empleado float (10,2),
estatus_empleado varchar(1) ,
Primary key (codigo_empleado),
foreign key (codigo_puesto) references puesto_8008(codigo_puesto),
foreign key (codigo_departamento) references departamento_8008(codigo_departamento)

)Engine= InnoDB, default char set= latin1;
create table conceptos_8008(
codigo_concepto varchar(5) primary key,
nombre_concepto varchar(60),
efecto_concepto varchar(1),
estatus_concepto varchar(1)

)Engine= InnoDB, default char set= latin1;
create table nominae_8008(
codigo_nomina varchar(5)primary key,
fecha_inicio date,
fecha_final date

)Engine= InnoDB, default char set= latin1;

create table nominad_8008(
codigo_nomina varchar(5),
codigo_concepto varchar(5),
codigo_empleado varchar(5),
valor_nominad float(10,2),
Primary key(codigo_nomina,codigo_concepto,codigo_empleado),
foreign key (codigo_nomina) references nominae_8008(codigo_nomina),
foreign key (codigo_concepto) references conceptos_8008(codigo_concepto),
foreign key (codigo_empleado) references empleado_8008(codigo_empleado)

)Engine= InnoDB
