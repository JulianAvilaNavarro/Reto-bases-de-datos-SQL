/*Procedimientos almacenados*/
USE julianAvila_02_12_2021;

# Listar pacientes

drop procedure if exists sp_listar_pacientes;
DELIMITER $$
create procedure sp_listar_pacientes()
begin
	select
    p.Num_H_Clinica as 'Historia Clinica',
    p.Primer_Nombre as 'Nombre',
    p.Apellido as 'Apellido',
    p.Num_Seguridad_Social as '# Seguridad Social',
    p.TELEFONO as 'Telefono',
    p.Fecha_De_Nacimiento as 'Fecha Nacimiento',
    p.Calle as 'Calle',
    p.Numero as 'Numero Calle',
	p.piso as 'Piso'
 
from paciente p;
end$$ 
DELIMITER ;
call sp_listar_pacientes();

# Insertar paciente PACIENTE

drop procedure if exists sp_insertar_PACIENTES;
DELIMITER $$
create procedure sp_insertar_PACIENTES(
    in Num_H_Clinica VARCHAR(50) ,
    in Primer_Nombre VARCHAR(50) ,
    in Apellido VARCHAR(50) ,
    in Num_Seguridad_Social VARCHAR(50) ,
    in TELEFONO VARCHAR(50) ,
    in Fecha_De_Nacimiento date,
    in Calle VARCHAR(50) ,
    in Numero VARCHAR(50) ,
	in piso int 

)
begin
insert into paciente value(
	Num_H_Clinica,
    Primer_Nombre,
    Apellido,
    Num_Seguridad_Social ,
    TELEFONO,
    Fecha_De_Nacimiento,
    Calle,
    Numero,
	piso );
	
 
end $$
DELIMITER ;
call sp_insertar_PACIENTES("00014","Miguel","Niño",null,3107772789,"1999-10-16","93A","07",3);
select*from paciente where Num_H_Clinica='00014';

# Listar servicios

drop procedure if exists sp_listar_servicios;
DELIMITER $$
create procedure sp_listar_servicios()
begin
	select
s.Nombre_Servicio,
s.Gasto_Servicio,
s.Num_Colegiado 
 
from servicio s;
end$$ 
DELIMITER ;
call sp_listar_servicios();