-- Aula 12 - junção de tabelas com INNER JOIN:
-- Exemplo 1: Faça uma consulta à tabela de pedidos que retorne as colunas de loja, gerente da loja, 
-- endereço, número de funcionários, data de venda e receita de venda
SELECT pedidos.ID_Loja, Loja, Gerente, Endereco, Num_Funcionarios, Data_Venda, Receita_Venda
FROM pedidos
INNER JOIN lojas ON pedidos.ID_Loja = lojas.ID_Loja;

-- Exemplo 2: Crie um agrupamento que mostre o
-- total de receita (tabela pedidos), gerente e numero de funcionários por loja

SELECT Loja, Gerente, Num_Funcionarios, SUM(Receita_Venda) AS 'Receita Total'
FROM pedidos
INNER JOIN lojas ON pedidos.ID_Loja = lojas.ID_Loja
GROUP BY Loja, Gerente, Num_Funcionarios;

