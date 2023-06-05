--PARA CREAR UNA BASE DE DATOS CON CONFIGS
CREATE DATABASE DBFACPYAUNO
ON
(NAME = DBFACPYAUNO_DATA,
 FILENAME = 'C:\CURSO\UNIDAD_D\DBFACPYAUNO_DATA.mdf',
 SIZE = 10MB,
 MAXSIZE = 200MB,
 FILEGROWTH = 5MB)
 LOG ON 
 (NAME = DBFACPYAUNO_LOG,
  FILENAME = 'C:\CURSO\UNIDAD_E\DBFACPYAUNO_LOG.ldf',
  SIZE = 10MB,
  MAXSIZE = 200MB,
  FILEGROWTH = 5MB)
  GO

---------------------------------------------------
USE DBFACPYAUNO
GO

-----------------------------------------------------
USE MASTER

DROP DATABASE DBFACPYAUNO
-----------------------------------------------------
--FORMA BUENA PRACTICA DESDE LA CREACION
CREATE TABLE ALUMNO 
(Matricula INT IDENTITY(1000,1) NOT NULL,
 Nombre VARCHAR(25) NOT NULL,
 APaterno VARCHAR(25) NOT NULL,
 AMaterno VARCHAR(25) NOT NULL,
 --El tipo de fecha es relevante dependiendo de la finalidad del sistema. Puede servir para análisis de datos.
 FecRegistro DATE NOT NULL 
 CONSTRAINT DF_FecRegistro_ALU DEFAULT(GETDATE()),
 --Si la columna solo tendrá dos valores como estado solo es necesario un booleano, 
 --si son más de 2 estados sí es necesario una tabla extra.
 IsActivo BIT NOT NULL 
 CONSTRAINT DF_IsActivo_ALU DEFAULT(1),
 CONSTRAINT PK_Matricula_ALU PRIMARY KEY (Matricula))
 GO
 -----------------------------------------------------
--FORMA DE MANTENIMIENTO
 CREATE TABLE ALUMNO 
(Matricula INT IDENTITY(1000,1) NOT NULL,
 Nombre VARCHAR(25) NOT NULL,
 APaterno VARCHAR(25) NOT NULL,
 AMaterno VARCHAR(25) NOT NULL,
 FecRegistro DATE NOT NULL,
 IsActivo BIT NOT NULL)
 GO

--AGREGAR LAS CONSTRAINT POR SEPARADO
ALTER TABLE ALUMNO 
ADD CONSTRAINT DF_FecRegistro_ALU DEFAULT(GETDATE()) FOR FecRegistro
GO

ALTER TABLE ALUMNO
ADD CONSTRAINT DF_IsActivo_ALU DEFAULT(1) FOR IsActivo
GO

ALTER TABLE ALUMNO
ADD CONSTRAINT PK_Matricula_ALU PRIMARY KEY (Matricula)
GO
-----------------------------------------------------
--AGREGAR UNA NUEVA COLUMNA
ALTER TABLE ALUMNO
ADD IsActivo BIT NOT NULL
GO