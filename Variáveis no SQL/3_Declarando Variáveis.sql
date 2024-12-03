--DEclarando Variáveis

--Preço = 15.56
DECLARE @preco FLOAT
SET @preco = 15.56
SELECT @preco AS 'Preço'

--Nome = Ismael
DECLARE @nome VARCHAR(30)
SET @nome = 'Ismael Alves de Faria'
SELECT @nome AS 'Nome'

--Declarar variável data
DECLARE @data DATETIME
SET @data = '21/05/2024'
SELECT @data AS 'Data'

--DEclarar mais de uma variável
DECLARE @var1 INT
DECLARE @texto VARCHAR(30)
DECLARE @datas DATETIME

SET @var1 = 45
SET @texto = 'I2P³'
SET @datas = '21/05/2024'
SELECT @var1 AS 'INT', @texto AS 'Turma', @datas AS 'Data'

--Declarando e atribuindo valor diretamente
DECLARE @var2 INT = 45,
		@texto2 VARCHAR(30) = 'I2P³',
		@data2 DATETIME = '21/05/2024'

SELECT @var2 AS 'INT', @texto2 AS 'Turma', @data2 AS 'Data'

--Ex1) 100 livros a 25.55 cada. Calcule o total

DECLARE @venda VARCHAR(20) = 'Total da venda de livros',
		@valorCamisa FLOAT = 25.55,
		@quantidade INT = 50

SELECT 	@valorCamisa * @quantidade AS 'Total'


