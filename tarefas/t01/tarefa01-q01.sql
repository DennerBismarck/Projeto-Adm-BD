--Questão 1 da lista original

SELECT nome
FROM funcionario
WHERE salario > (
    SELECT MAX(salario)
    FROM funcionario
    WHERE cod_depto = 2
);