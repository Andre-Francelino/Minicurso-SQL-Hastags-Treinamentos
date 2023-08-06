-- Exercícios de Fixação

-- Exercício 1 (comandos SELECT, *, FROM, AS, LIMIT)
-- a) Selecione todas as colunas e linhas da tabela de produtos

SELECT * FROM produtos;

-- b) Agora selecione apenas as colunas Nome_Produto, Marca_Produto e Preco_Unit 
-- renomeie essas colunas para Nome do Produto, Marca e Preço Unitário

SELECT Nome_Produto AS 'Nome do Produto', Marca_Produto AS 'Marca', Preco_Unit AS 'Preço Unitário'
FROM produtos;

-- c) Selecione as 5 primeiras linhas da tabela de lojas (considere todas as colunas)

SELECT * FROM lojas
LIMIT 5;



-- Exercício 2 (comando ORDER BY)
-- a) Faça uma consulta na tabela de lojas e ordene a tabela de acordo com a coluna de Num_Funcionarios, em ordem crescente.
-- Obs: Sua consulta deve retornar as colunas de Loja (AS 'Nome da Loja'),
-- Endereco (AS 'Endereço'), Num_Funcionarios (AS 'Qtd. Funcionários') e Telefone (AS 'Número para contato')

SELECT Loja AS 'Nome da Loja', Endereco AS 'Endereço', Num_Funcionarios AS 'Qtd. Funcionários', Telefone AS 'Número para contato' 
FROM lojas
ORDER BY Num_Funcionarios;

-- b) Faça uma cosulta na tabela de clientes, ordenando a tabela de acordo com o nome 
-- (ordem alfabética) e sobrenome (ordem alfabética). Retorne todas as colunas e linhas da tabela

SELECT * FROM clientes
ORDER BY Nome, Sobrenome;



-- Exercício 3 (filtros WHERE)
-- a) Faça um filtro na tabela de produtos e retorne apenas os produtos com custo maior ou igual a 200.

SELECT * FROM produtos
WHERE Custo_Unit >= 200;

-- b) Faça um filtro na tabela de produtos e retorne apenas os produtos da marca "DELL".

SELECT * FROM produtos
WHERE Marca_Produto = 'DELL';




-- Exercício 4 (funções de agregação)
-- a) Descubra o total de custo da tabela de pedidos.

SELECT SUM(Custo_Venda) AS 'Custo Total' FROM pedidos;

-- b) Descubra a quantidade total de lojas.

SELECT COUNT(Loja) AS 'Qtd. Lojas' FROM lojas;

-- c) Descubra o custo médio dos produtos (de acordo com a tabela de produtos).

SELECT AVG(Custo_Unit) AS 'Média de Custo' FROM produtos;

-- d) Descubra a quantidade mínima e máxima de funcionários das lojas (faça isso em um único SELECT).

SELECT
	MIN(Num_Funcionarios) AS 'Qtd. Mínima de Funcionários',
    MAX(Num_Funcionarios) AS 'Qtd. Máxima de Funcionários'
FROM
	lojas;



-- Exercício 5 (comandos GROUP BY e junções de tabelas INNER JOIN)
-- a) Faça um agrupamento para descobrir o total de clientes por Sexo.

SELECT Sexo, COUNT(Sexo) AS 'Total Clientes por Sexo'
FROM clientes
GROUP BY Sexo;

-- b) Faça um agrupamento para descobrir quantos produtos existem por categoria.

SELECT
	Categoria,
    COUNT(*) AS 'Qtd. Produtos'
FROM
	produtos
INNER JOIN categorias
    ON produtos.ID_Categoria = categorias.ID_Categoria
GROUP BY
	Categoria;

-- c) Faça um agrupamento para descobrir a soma e o custo total de receita por Loja.

SELECT Loja, SUM(Receita_Venda) AS 'Receita Total', SUM(Custo_Venda) AS 'Custo Total'
FROM pedidos
INNER JOIN lojas ON pedidos.ID_Loja = lojas.ID_Loja
GROUP BY Loja;