#Vistas
USE julianAvila_02_12_2021;

#Vista para obtener los gastos por paciente
drop view if exists Vista_Gastos_Paciente;
create view Vista_Gastos_Paciente as
select
	concat(p.Primer_Nombre, ' ', p.Apellido) as "Nombre Paciente",
    concat(p.Num_H_Clinica, ' ', i.N_Secuencia) as "Historial Medico",
    concat(fa.primer_Nombre,'-', fa.Apellido) as "Nombre Especialista",
    i.Diagnostico as "Diagnostico",
    s.Nombre_Servicio as "Especialidad",
    s.Gasto_Servicio as "Costo consulta",
    sum(f.Precio_Unidosis*info.Dosis_Administradas) as "Costo Medicamento", 
    info.Gasto_Farmaco_Diagnostico + s.Gasto_Servicio + sum(f.Precio_Unidosis*info.Dosis_Administradas)  as "Total a Pagar"
    
from 
	paciente p inner join ingreso i on p.Num_H_Clinica = i.Num_H_Clinica
    inner join servicio s on i.Nombre_Servicio = s.Nombre_Servicio
	inner join facultativo fa on s.Num_Colegiado = fa.Num_Colegiado
    inner join receta r on fa.Num_Colegiado= r.Num_Colegiado
    inner join farmacos f on r.N_Registro = f.N_Registro
    inner join informe info on f.Id_Gastos = info.Id_Gastos
group by
	i.Fecha_Ingreso;  
;
select* from Vista_Gastos_Paciente;

#################################################################
#Vista para obtener los gastos por consulta

drop view if exists vista_Gastos_Servicios;
create view vista_Gastos_Servicios as
select
	concat(fa.Primer_Nombre,' ', fa.Apellido) as "Nombre Especialista",
	s.Nombre_Servicio as "Especialidad",
    s.Gasto_Servicio as "Costo Consulta",
    sum(f.Precio_Unidosis*info.Dosis_Administradas) as "Costo Medicamento",
    s.Gasto_Servicio + sum(f.Precio_Unidosis*info.Dosis_Administradas) as "Total servicio"

from 
	facultativo fa inner join servicio s on fa.Num_Colegiado = s.Num_Colegiado   
    inner join informe info on s.Nombre_Servicio = info.Nombre_Servicio
    inner join farmacos f on info.Id_Gastos = f.Id_Gastos 
group by
	info.Id_Gastos
;
select* from vista_Gastos_Servicios