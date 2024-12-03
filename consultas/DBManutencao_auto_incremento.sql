CREATE DATABASE DBManutencao;

USE DBManutencao;

CREATE TABLE Equipamento(
	id_equipamento INT identity (1,1) primary key,
	equipamento VARCHAR(50)
);

INSERT INTO Equipamento(equipamento)
VALUES
	('Esteira de transporte 1'),
	('Esteira de transporte 2'),
	('Esteira de transporte 3'),
	('Misturador 1'),
	('Panetizadora 1'),
	('Panetizadora 2'),
	('Panetizadora 3'),
	('Prensa 1'),
	('Prensa 2'),
	('Prensa 3'),
	('T�mpera 1'),
	('T�mpera 2'),
	('T�mpera 3'),
	('Transportador das prensas');

select * from Equipamento;

CREATE TABLE Departamento(
	id_departamento INT identity (1245,1) primary key,
	departamento VARCHAR(50)
);

INSERT INTO Departamento(departamento)
VALUES
	
	('Administrativo'),
	('Escolha'),
	('Estoque'),
	('Financeiro'),
	('Manuten��o El�trica'),
	('Manuten��o Mec�nica'),
	('Manuten��o Predial'),
	('Mat�ria-Prima'),
	('Portaria'),
	('Produ��o'),
	('Recursos Humanos'),
	('Restaurante'),
	('TI'),
	('Vesti�rio Feminino'),
	('Vesti�rio Masculino');

select * from Departamento

