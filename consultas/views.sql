USE DB_DocesSA;

--Views do consultores
SELECT nome FROM Consultor
SELECT COUNT(nome) AS 'Quantidade de consultores' FROM Consultor
SELECT nome, cidade FROM Consultor


--Views dos consultores por sexo
SELECT sexo, COUNT(*) AS 'Consultores por sexo'
FROM Consultor
WHERE sexo IN ('F','M')
GROUP BY sexo 


--Views dos clientes
SELECT nome FROM Cliente
SELECT COUNT(nome) AS 'Quantidade de clientes' FROM Cliente


--Views da quantidade de consultor em cada cidade
SELECT COUNT(DISTINCT cidade) AS 'Total de cidade que tem clientes'
FROM Consultor
WHERE cidade IS NOT NULL;


--Views das cidades que os consultores atuam
SELECT nome AS 'Consultor', cidade AS 'Cidade' 
FROM Consultor 

--Total de vendas por consultor em ordem decrecente
SELECT Consultor.nome, COUNT(id_cliente) AS 'Vendas'
FROM Pedido
LEFT OUTER JOIN Consultor
ON Consultor.id_consultor = Pedido.id_consultor
GROUP BY Consultor.id_consultor, Consultor.nome
ORDER BY Vendas DESC


--Total de vendas de cada Estado
SELECT cidade AS 'Cidade', 
COUNT(id_cliente) AS 'Vendas' 
FROM Consultor  
LEFT OUTER JOIN Pedido
ON Consultor.id_consultor = Pedido.id_consultor
GROUP BY cidade


--Total de compra de cada cliente
SELECT 
	nome AS 'Nome', 
	COUNT(Pedido.id_cliente) AS 'Compras'
FROM Cliente
LEFT OUTER JOIN Pedido
	ON Pedido.id_cliente = Cliente.id_cliente
GROUP BY Cliente.nome
ORDER BY Compras DESC

-- Exibir a lista de pedidos (Alterar o ID pedido no final para checar um pedido específico)
SELECT
    Lista_Pedido.id_produto AS 'ID do Produto',
    Lista_Pedido.quantidade AS 'Quantidade',
    Produto.nome AS 'Produto',
    FORMAT((Lista_Pedido.quantidade * Produto.valor), 'C', 'pt-BR') AS 'Subtotal'
FROM 
    Lista_Pedido
LEFT OUTER JOIN 
    Produto ON Produto.id_produto = Lista_Pedido.id_produto
LEFT OUTER JOIN 
    Pedido ON Pedido.id_lista = Lista_Pedido.id_lista
WHERE 
    id_pedido = 1;

-- Exibir uma nota fiscal do pedido
SELECT 
    Pedido.id_pedido AS 'Número do Pedido',
    Cliente.id_cliente AS 'ID do Cliente',
    Cliente.nome AS 'Cliente',
    Consultor.id_consultor AS 'ID do Consultor',
    Consultor.nome AS 'Consultor Responsável',
    FORMAT((Pedido.total_compra), 'c', 'pt-BR') AS 'Total da Compra',
    Pedido.id_lista AS 'ID da Lista de compras',
    COUNT(DISTINCT Lista_Pedido.id_produto) AS 'Total de Produtos'  -- Contagem de produtos únicos
FROM Pedido
LEFT OUTER JOIN 
    Consultor ON Consultor.id_consultor = Pedido.id_consultor
RIGHT OUTER JOIN
    Cliente ON Cliente.id_cliente = Pedido.id_cliente
LEFT OUTER JOIN 
    Lista_Pedido ON Lista_Pedido.id_lista = Pedido.id_lista
WHERE Pedido.id_pedido = 203
GROUP BY 
    Pedido.id_pedido, Cliente.id_cliente, Cliente.nome, Consultor.id_consultor, Consultor.nome, Pedido.total_compra, Pedido.id_lista;

--View do Estoque
SELECT 
	Estoque.id_produto as 'ID do produto',
	Produto.nome as 'Produto',
	data_compra as 'Data de compra',
	lote as 'Lote',
	quantidade as 'Quantidade'
FROM Estoque
LEFT OUTER JOIN Produto
	ON Produto.id_produto = Estoque.id_produto
WHERE Estoque.id_estoque = 1

 
 SELECT 
    Cliente.id_cliente AS Cliente,
    STRING_AGG(Consultor.id_consultor, ', ') AS Possiveis_Consultores
FROM 
    Cliente
JOIN 
    Consultor
ON 
    Cliente.cidade = Consultor.cidade
GROUP BY 
    Cliente.id_cliente
ORDER BY 
    Cliente.id_cliente;


	select * from Pedido

SELECT 
    Consultor.id_consultor AS 'ID',
    Consultor.nome AS 'Consultor',
    FORMAT(Pedido.data_pedido, 'MM/yyyy') AS 'Mês',
    FORMAT((SUM(Pedido.total_compra)), 'c', 'pt-BR') AS 'Total de vendas',
    FORMAT((SUM(Pedido.total_compra) * 0.02 + 2400), 'c', 'pt-BR') AS 'Salário Bruto'
FROM 
    Pedido
LEFT OUTER JOIN 
    Consultor ON Pedido.id_consultor = Consultor.id_consultor
GROUP BY 
    Consultor.id_consultor, 
    Consultor.nome, 
    FORMAT(Pedido.data_pedido, 'MM/yyyy')
ORDER BY 
    SUM(Pedido.total_compra) * 0.02 + 2400 ASC;