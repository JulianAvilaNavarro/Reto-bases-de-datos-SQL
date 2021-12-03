USE julianAvila_02_12_2021;


#CRUD flujo principal

#CREATE 
insert into paciente values ("00012","Manuel","Martinez",'SS0011',3107772777,"1997-04-16","132A","01",1);
insert into facultativo values ("COL00011","Jenny","Agredo","Medicina General",3189632145,"37","89A",11);
insert into servicio values ("Medicina General","500000","COL00011");
insert into Ingreso values ("1241","Optometria","00012",'2021-06-16','15:00:00','2021-06-28',"Miopia");
insert into informe values ("GA0011",52000,130000,170000,2,"00012","1241","COL00011","Medicina General");
insert into farmacos values ("FAR0011","CA03","GA0011","C8H9NO2","Acetaminofen 500","Paracetamol",10000,10,default ,"PRO0001");
insert into receta values ("FAR0011","COL00011",'2021-06-16');


#READ
SELECT * FROM paciente WHERE Num_H_Clinica="000012";
SELECT * FROM facultativo WHERE Num_Colegiado="COL00011";
SELECT * FROM servicio WHERE Nombre_Servicio="Medicina General";
SELECT * FROM Ingreso WHERE N_Secuencia="1241";
SELECT * FROM informe  WHERE Id_Gastos="GA0011";
SELECT * FROM receta WHERE N_Registro="FAR0011";

#UPDATE
UPDATE paciente SET Num_H_Clinica = "00011" WHERE Num_H_Clinica = "000012";
UPDATE facultativo SET Apellido = "Perez" WHERE Num_Colegiado = "COL00011";
UPDATE servicio SET Gasto_Servicio = "600000" WHERE Nombre_Servicio="Medicina General";
UPDATE Ingreso SET Diagnostico = "Miopia y astigmatismo" WHERE N_Secuencia="1241";
UPDATE informe SET Gasto_Farmaco_Paciente = 50000 WHERE Id_Gastos="GA0011";
UPDATE farmacos SET Ubiacion = "CA06" WHERE N_Registro="FAR0011";
UPDATE receta SET Fecha_Receta='2021-06-18' WHERE N_Registro="FAR0011";


#DELETE
DELETE FROM receta WHERE N_Registro="FAR0011";
DELETE FROM farmacos WHERE N_Registro="FAR0011";
DELETE FROM informe WHERE Id_Gastos="GA0011";
DELETE FROM Ingreso WHERE N_Secuencia="1241";
DELETE FROM servicio WHERE Nombre_Servicio="Medicina General";
DELETE FROM facultativo WHERE Num_Colegiado="COL00011";
DELETE FROM paciente WHERE Num_H_Clinica="00011";

select*from paciente;
select*from facultativo;
select*from servicio;
select*from informe;
select*from farmacos;
select*from Ingreso;
select*from receta;








