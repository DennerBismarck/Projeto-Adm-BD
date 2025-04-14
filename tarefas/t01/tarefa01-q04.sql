--Questão 11 da lista original


SELECT 
    p.nome AS nome_projeto,
    dp.descricao AS depto_projeto,
    f.nome AS responsavel,
    dr.descricao AS depto_responsavel
FROM projeto p
JOIN funcionario f ON p.cod_responsavel = f.codigo
LEFT JOIN departamento dp ON p.cod_depto = dp.codigo
LEFT JOIN departamento dr ON f.cod_depto = dr.codigo
WHERE p.cod_depto <> f.cod_depto;
