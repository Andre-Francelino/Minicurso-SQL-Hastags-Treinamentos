-- Aula 08 - ORDER BY:
-- Exemplo 1: Faça uma consulta na tabela de clientes e faça uma ordenação de acordo com o nome do cliente em ordem alfabética
SELECT * 
FROM clientes
ORDER BY nome, Sobrenome;

-- Exemplo 2: Faça uma consulta na tabela de clientes e faça uma ordenação de acordo com a renda anual, da maior para a menor
SELECT *
FROM clientes
ORDER BY Renda_Anual DESC;

-- Exemplo 3: Faça Faça uma consulta na tabela de clientes e faça uma ordenação
-- de acordo com a data de nascimento, em ordem do mais novo para o mais velho
SELECT Nome, Sobrenome, Email, Data_Nascimento
FROM clientes
ORDER BY Data_Nascimento;
