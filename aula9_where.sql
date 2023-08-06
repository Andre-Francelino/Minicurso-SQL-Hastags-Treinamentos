-- Aula 09 - WHERE:
-- Exemplo 1: Selecione na tabela de clientes apenas os clientes do sexo feminino
SELECT *
FROM clientes
WHERE Sexo = 'F';

-- Exemplo 2: Selecione na tabela de produtos apenas os produtos com preço acima de R$2.000
SELECT *
FROM produtos
WHERE Preco_Unit > 2000;

-- Exemplo 3: Selecione os pedidos realizados em 10/03/2019
SELECT *
FROM pedidos
WHERE Data_Venda = '2019-03-10';

-- Exemplo 4: Selecione os produtos da marca DELL
SELECT * FROM produtos
WHERE Marca_Produto = 'DELL';

-- Exemplo 5: Mostre apenas os clientes que são solteiros, do sexo masculino e que ainda não são pais
SELECT * FROM clientes
WHERE Estado_Civil = 'S' AND Sexo = 'M' AND Qtd_Filhos = 0;

-- Exemplo 6: Mostre clientes que são casados, do sexo feminino e que tenham até 2 filhos
SELECT * FROM clientes
WHERE Estado_Civil = 'C' AND Sexo = 'F' AND Qtd_Filhos <= 2;

-- Exemplo 7: Mostre todas as clientes que são mães solteiras
SELECT * FROM clientes
WHERE Sexo = 'F' AND Estado_Civil = 'S' AND Qtd_Filhos <> 0;

-- Exemplo 8: Mostre todos os produtos das marcas DELL ou SAMSUNG
SELECT * FROM produtos
WHERE Marca_Produto = 'DELL' OR Marca_Produto = 'SAMSUNG';
