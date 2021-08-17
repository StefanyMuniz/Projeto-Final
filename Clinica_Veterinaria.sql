-----------------------------------------
-- PROJETO FINAL ------------------------
-----------------------------------------
-- Habilita o banco de dado Master ------
-----------------------------------------

Use master
GO

---------------------------------------------------
-- Criação do banco de dados Clinica_Veterinaria --
---------------------------------------------------

CREATE DATABASE Clinica_Veterinaria
GO

USE Clinica_Veterinaria
GO

-------------------------
-- Criação das tabrlas --
-------------------------

CREATE TABLE CLIENTE (
    Cod_Cliente INT PRIMARY KEY,
    Nome_cliente VARCHAR (50),
    Endereço_Cliente VARCHAR (50),
    CPF_Cliente VARCHAR (20),
    Telefone_Cliente VARCHAR (20)
)
GO


CREATE TABLE ANIMAL (
    Cod_Animal INT PRIMARY KEY,
	Cod_Cliente INT,
    Nome_Animal VARCHAR (15) ,
    Tipo_Animal VARCHAR (15),
    Raça_Animal VARCHAR (30),
    Cor_Animal VARCHAR (20),
	Sexo_Animal VARCHAR (8),
    Peso_Animal VARCHAR (10),
    Idade_Animal VARCHAR (10),
    Alergico VARCHAR (15)
)
GO

SET DATEFORMAT DMY
GO 

CREATE TABLE VETERINÁRIO (
    Cod_Veterinario INT PRIMARY KEY,
    Nome_Veterinario VARCHAR (50),
    Data_de_Nascimento DATE,
    Telefone_Veterinario VARCHAR (20),
	Email_Veterinario VARCHAR (30)
)
GO

SET DATEFORMAT DMY
GO 

CREATE TABLE CONSULTA (
    Cod_Consulta INT PRIMARY KEY,
    Cod_Veterinario INT,
    Cod_Animal INT,
    Data_Consulta DATE,
    Hora_Consulta TIME,
    Valor_Consulta DECIMAL (10,2),
    Diagnostico VARCHAR (50)
)
GO

CREATE TABLE CADASTRAR(
	Nome_Login VARCHAR (50),
	Email_Login VARCHAR (30),
	Senha_Login VARCHAR (15)
)
GO

SELECT * FROM CLIENTE
GO

SELECT * FROM ANIMAL
GO

SELECT * FROM VETERINÁRIO
GO

SELECT * FROM CONSULTA
GO

SELECT * FROM CADASTRAR
GO