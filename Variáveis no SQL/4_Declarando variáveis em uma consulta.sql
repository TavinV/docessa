CREATE DATABASE DBLoja
USE DBLoja

CREATE TABLE dProduto(
	id_produto INT identity (1,1) primary key,
	nome_produto VARCHAR(100),
	valor_unitario FLOAT
)

INSERT INTO dProduto(nome_produto, valor_unitario)
VALUES
	('Barra de Cereal', 8.60),
	('Panetone Paraty', 16.80),
	('Sucrílio Dubom', 25.40),
	('Queijo Freascal', 38.50),
	('Leite Muito Longa Vida', 12.70),
	('Chocolate Chocante', 18.45),
	('Bolacha Comabem', 11.40)

SELECT * FROM dProduto;

DECLARE @varDesconto FLOAT
SET @varDesconto = 0.15

SELECT
	id_produto,
	nome_produto,
	'R$' + ' ' + CAST(valor_unitario AS VARCHAR) AS 'Valor Unitário',
	'R$' + ' ' + CAST(valor_unitario * @varDesconto AS VARCHAR) AS 'Desconto',
	'R$' + ' ' + CAST(valor_unitario * (1 - @varDesconto) AS VARCHAR) AS 'Valor pago'
FROM
	dProduto


