CREATE DATABASE DBBiblioteca
USE DBBiblioteca

CREATE TABLE Material(
	id_material INT IDENTITY (1,1),
	nome_material VARCHAR(50),
	numero_pagina INT
)

INSERT INTO Material(nome_material, numero_pagina)
VALUES
	('Livro Introdu��o � Programa��o', 220),
	('Livro Mec�nica Aplicada', 350),
	('Livro Eletr�nica Aplicada', 400),
	('Livro Instala��es El�trica Predial', 330)

Select * from Material

--Execute o comando Truncate
TRUNCATE TABLE Material

--Selecione a consulta da tabela
Select * from Material

--Insira os dados na tabela existente
INSERT INTO Material(nome_material, numero_pagina)
VALUES
	('Livro Introdu��o � Programa��o', 220),
	('Livro Mec�nica Aplicada', 350),
	('Livro Eletr�nica Aplicada', 400),
	('Livro Instala��es El�trica Predial', 330)

--Selecione a consulta da tabela
Select * from Material

--Execute o comando Drop
DROP TABLE Material;

--Selecione a consulta da tabela
Select * from Material

--N�o h� possibilidade de inserir dados, tabela n�o existente
INSERT INTO Material(nome_material, numero_pagina)
VALUES
	('Livro Introdu��o � Programa��o', 220),
	('Livro Mec�nica Aplicada', 350),
	('Livro Eletr�nica Aplicada', 400),
	('Livro Instala��es El�trica Predial', 330)