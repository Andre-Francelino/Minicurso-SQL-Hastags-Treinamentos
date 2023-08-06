-- Aula 10 - Funções de Agregação (SUM, COUNT, AVG, MIN E MAX:
 
 -- SUM -> Somar os valores na coluna receita vendas
 SELECT SUM(Receita_Venda) AS 'Receita Total' FROM pedidos;
 
 -- COUNT -> Fazer contagem da quantidade de clientes do sexo masculino
 SELECT COUNT(Nome) AS 'Qtd Clientes Homens' FROM clientes
 WHERE Sexo = 'M';
 
 -- AVG -> Fazer média dos salários dos clientes
 SELECT AVG(Renda_Anual) AS 'Média Salarial' FROM clientes;
 
 -- MIN -> Saber qual o menor preço de produto
 SELECT MIN(Preco_Unit) AS 'Preço Unitário Mínimo' FROM produtos;
 
 -- MAX -> Saber qual o maior preço de produto
 SELECT MAX(Preco_Unit) AS 'Preço Unitário Máximo' FROM produtos;
 