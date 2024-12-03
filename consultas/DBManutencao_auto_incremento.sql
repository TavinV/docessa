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
	('Têmpera 1'),
	('Têmpera 2'),
	('Têmpera 3'),
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
	('Manutenção Elétrica'),
	('Manutenção Mecânica'),
	('Manutenção Predial'),
	('Matéria-Prima'),
	('Portaria'),
	('Produção'),
	('Recursos Humanos'),
	('Restaurante'),
	('TI'),
	('Vestiário Feminino'),
	('Vestiário Masculino');

select * from Departamento

