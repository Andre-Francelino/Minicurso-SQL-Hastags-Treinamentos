-- Aula 11 - GROUP BY:
-- Exemplo 1: Crie um agrupamento que mostre a quantidade de produtos por marca
SELECT Marca_Produto, COUNT(Marca_Produto) AS 'Qtd. Produtos'
FROM produtos
GROUP BY Marca_Produto;

-- Exemplo 2: Crie um agrupamento que mostre a quantidade de clientes por escolaridade
SELECT Escolaridade, COUNT(Escolaridade) AS 'Qtd. Clientes'
FROM clientes
GROUP BY Escolaridade;

-- Exemplo 3: Crie um agrupamento que mostre o total de receita (tabela pedidos) por id da loja
SELECT ID_Loja, SUM(Receita_Venda) AS 'Receita Total'
FROM pedidos
GROUP BY ID_Loja;

-- Exemplo 4: Crie um agrupamento para mostrar o total de clientes por sexo
SELECT Sexo, COUNT(Sexo) AS 'Qtd. Clientes por sexo'
FROM clientes
GROUP BY Sexo;

-- Exemplo 5:
SELECT Estado_Civil, COUNT(Estado_Civil) AS 'Qtd. Estado Cívil'
FROM clientes
GROUP BY Estado_Civil;
