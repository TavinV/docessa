CREATE DATABASE DBBiblioteca
USE DBBiblioteca

CREATE TABLE Material(
	id_material INT IDENTITY (1,1),
	nome_material VARCHAR(50),
	numero_pagina INT
)

INSERT INTO Material(nome_material, numero_pagina)
VALUES
	('Livro Introdução à Programação', 220),
	('Livro Mecânica Aplicada', 350),
	('Livro Eletrônica Aplicada', 400),
	('Livro Instalações Elétrica Predial', 330)

Select * from Material

--Execute o comando Truncate
TRUNCATE TABLE Material

--Selecione a consulta da tabela
Select * from Material

--Insira os dados na tabela existente
INSERT INTO Material(nome_material, numero_pagina)
VALUES
	('Livro Introdução à Programação', 220),
	('Livro Mecânica Aplicada', 350),
	('Livro Eletrônica Aplicada', 400),
	('Livro Instalações Elétrica Predial', 330)

--Selecione a consulta da tabela
Select * from Material

--Execute o comando Drop
DROP TABLE Material;

--Selecione a consulta da tabela
Select * from Material

--Não há possibilidade de inserir dados, tabela não existente
INSERT INTO Material(nome_material, numero_pagina)
VALUES
	('Livro Introdução à Programação', 220),
	('Livro Mecânica Aplicada', 350),
	('Livro Eletrônica Aplicada', 400),
	('Livro Instalações Elétrica Predial', 330)