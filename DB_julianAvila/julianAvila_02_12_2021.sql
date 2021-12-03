#CREACIÓN DB HOSPITAL
DROP DATABASE julianAvila_02_12_2021;
CREATE DATABASE julianAvila_02_12_2021 CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE julianAvila_02_12_2021;



CREATE TABLE Paciente(
Num_H_Clinica VARCHAR(50) PRIMARY KEY,
Primer_Nombre VARCHAR(50) NOT NULL,
Apellido VARCHAR(50) NOT NULL,
Num_Seguridad_Social VARCHAR(50),
TELEFONO VARCHAR(50) NOT NULL,
Fecha_De_Nacimiento DATE DEFAULT '0000-00-00',
Calle VARCHAR(50) NOT NULL,
Numero VARCHAR(50) NOT NULL,
Piso INT NOT NULL
);
CREATE TABLE Facultativo(
Num_Colegiado VARCHAR(50) PRIMARY KEY,
Primer_Nombre VARCHAR(50) NOT NULL,
Apellido VARCHAR(50) NOT NULL,
Servicio_Hospital VARCHAR(50) NOT NULL,
TELEFONO VARCHAR(50) NOT NULL,
Calle VARCHAR(50) NOT NULL,
Numero VARCHAR(50) NOT NULL,
Piso INT NOT NULL
);

CREATE TABLE Servicio(
Nombre_Servicio VARCHAR(50),
Gasto_Servicio Decimal NOT NULL,
Num_Colegiado VARCHAR(50),
CONSTRAINT fk_Num_Colegiado_Servicio FOREIGN KEY (Num_Colegiado) REFERENCES Facultativo (Num_Colegiado),
primary key(Nombre_Servicio)
);

CREATE TABLE Ingreso(
N_Secuencia VARCHAR(50),
Nombre_Servicio VARCHAR(50),
Num_H_Clinica VARCHAR(50),
Fecha_Ingreso DATE DEFAULT '0000-00-00',
Hora TIME default '00:00:00',
Fecha_Alta DATE DEFAULT '0000-00-00',
Diagnostico VARCHAR(50) NOT NULL,
CONSTRAINT fk_Nombre_Servicio_Ingreso FOREIGN KEY (Nombre_Servicio) REFERENCES Servicio (Nombre_Servicio),
CONSTRAINT fk_Num_H_Clinica_Ingreso FOREIGN KEY (Num_H_Clinica) REFERENCES Paciente (Num_H_Clinica),
primary key(N_Secuencia ,Num_H_Clinica)
);


CREATE TABLE Informe(
Id_Gastos VARCHAR(50) PRIMARY KEY,
Gasto_Farmaco_Diagnostico Decimal NOT NULL,
Gasto_Farmaco_Paciente Decimal NOT NULL,
Gasto_Farmaco_Servicio Decimal NOT NULL,
Dosis_Administradas int default 0,
Num_H_Clinica VARCHAR(50) NOT NULL,
N_Secuencia VARCHAR(50) NOT NULL,
Num_Colegiado VARCHAR(50) NOT NULL,
Nombre_Servicio VARCHAR(50) NOT NULL,

CONSTRAINT fk_Ingreso_Informe FOREIGN KEY (N_Secuencia ,Num_H_Clinica) REFERENCES Ingreso (N_Secuencia ,Num_H_Clinica),
CONSTRAINT fk_Num_Colegiado_Informe FOREIGN KEY (Num_Colegiado) REFERENCES Facultativo (Num_Colegiado),
CONSTRAINT fk_Nombre_Servicio_Informe FOREIGN KEY (Nombre_Servicio) REFERENCES Servicio (Nombre_Servicio)
);

CREATE TABLE Farmacos(
N_Registro VARCHAR(50) PRIMARY KEY,
Ubiacion VARCHAR(50) NOT NULL,
Id_Gastos VARCHAR(50) NOT NULL,
Compuestio_Quimico VARCHAR(50) NOT NULL,
Nombre_Comercial VARCHAR(50) NOT NULL,
Nombre_Clinico VARCHAR(50) NOT NULL,
Precio_T_Envase DECIMAL NOT NULL,
Num_Unidosis_x_Envase DECIMAL NOT NULL,
Precio_Unidosis decimal default(Precio_T_Envase/Num_Unidosis_x_Envase),
Cod_Proveedor VARCHAR(50) NOT NULL,
CONSTRAINT fk_Id_Gastos_Farmacos FOREIGN KEY (Id_Gastos) REFERENCES Informe (Id_Gastos)
);

CREATE TABLE Receta(
N_Registro VARCHAR(50) NOT NULL,
Num_Colegiado VARCHAR(50) NOT NULL,
Fecha_Receta DATE DEFAULT '0000-00-00',
CONSTRAINT fk_Num_Colegiado_Receta FOREIGN KEY (Num_Colegiado) REFERENCES Servicio (Num_Colegiado),
CONSTRAINT fk_N_Registro_Receta FOREIGN KEY (N_Registro) REFERENCES Farmacos (N_Registro)
);
SHOW TABLES;
SHOW COLUMNS FROM Paciente;