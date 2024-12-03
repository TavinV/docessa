CREATE Database DB_DocesSA
USE DB_DocesSA

CREATE TABLE  Cliente (
    id_cliente INT identity (1,1) primary key,
    nome varchar(40),
    cnpj varchar(18),
	endereco varchar(90),
	cidade varchar(20)

);

CREATE TABLE  Consultor (
    id_consultor INT identity (1,1) primary key,
    nome varchar(70),
    sexo varchar(1),
	cidade varchar(30),
	cpf varchar(14),
	email varchar(90)
);

CREATE TABLE  Pedido (
    id_pedido INT identity (1,1) primary key,
    id_consultor INT,
    id_cliente INT,
	id_lista INT,
	data_pedido DATE,
	total_compra FLOAT
);


CREATE TABLE  Produto (
	id_produto INT identity (1,1) primary key,
	nome varchar(90),
	valor FLOAT,
	validade SMALLINT, --Validade em meses do produto
);


CREATE TABLE Estoque (
    id_estoque INT,
    data_compra DATE,
    lote INT,
    quantidade INT,
    id_produto INT,
);


CREATE TABLE Endereco_Estoque (
	id_estoque INT,
	endereco varchar(90),
	cidade varchar(30)
);

CREATE TABLE Lista_Pedido (
    id_lista INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT,
);

