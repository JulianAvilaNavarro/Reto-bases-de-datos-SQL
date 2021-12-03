
#CRUD PACIENTES
USE julianAvila_02_12_2021;
insert into paciente values ("00013","Miguel","Niño",null,3107772789,"1999-10-16","93A","07",3);
SELECT * FROM paciente WHERE Num_H_Clinica="000013";
UPDATE paciente SET Num_H_Clinica = "00014" WHERE Num_H_Clinica = "000012";
DELETE FROM paciente WHERE Num_H_Clinica="00014";

#CRUD FACULTATIVOS
insert into facultativo values ("COL00012","Marta","Agredo","Cirugia",3199642145,"49","85A",1);
SELECT * FROM facultativo WHERE Num_Colegiado="COL00012";
UPDATE facultativo SET Apellido = "Alvarez" WHERE Num_Colegiado = "COL00012";
DELETE FROM facultativo WHERE Num_Colegiado="COL00012";