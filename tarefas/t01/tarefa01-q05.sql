--Questão 16 da lista original

-- Criação da view
CREATE OR REPLACE VIEW vw_atividades_por_funcionario AS
SELECT 
    f.codigo AS cod_funcionario,
    f.nome AS nome_funcionario,
    COUNT(a.codigo) AS qtd_atividades
FROM funcionario f
LEFT JOIN atividade a ON f.codigo = a.cod_responsavel
GROUP BY f.codigo, f.nome;

-- Consulta
SELECT * FROM vw_atividades_por_funcionario;
