INSERT INTO departamento (codigo, descricao, cod_gerente) VALUES
(1, 'Recursos Humanos', NULL),
(2, 'Tecnologia da Informação', NULL),
(3, 'Marketing', NULL),
(4, 'Financeiro', NULL),
(5, 'Logística', NULL);

INSERT INTO funcionario (codigo, nome, sexo, dt_nasc, salario, cod_depto) VALUES
(101, 'Ana Paula', 'F', '1990-03-15', 5500.00, 1),
(102, 'Rael', 'M', '1985-11-23', 7000.00, 2),
(103, 'Mariana Souza', 'F', '1998-07-10', 4800.00, 3),
(104, 'Denner', 'M', '1975-05-05', 9000.00, 4),
(105, 'Fernanda Lima', 'F', '1992-01-20', 5000.00, 5);


UPDATE departamento SET cod_gerente = 101 WHERE codigo = 1;
UPDATE departamento SET cod_gerente = 102 WHERE codigo = 2;
UPDATE departamento SET cod_gerente = 103 WHERE codigo = 3;
UPDATE departamento SET cod_gerente = 104 WHERE codigo = 4;
UPDATE departamento SET cod_gerente = 105 WHERE codigo = 5;


INSERT INTO projeto (codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) VALUES
(201, 'Recrutamento 2025', 'Planejamento anual de contratações.', 1, 101, '2025-01-01', '2025-03-31'),
(202, 'Infraestrutura TI', 'Upgrade dos servidores e redes.', 2, 102, '2025-02-15', '2025-06-30'),
(203, 'Campanha Publicitária', 'Promoção de novos produtos.', 3, 103, '2025-03-01', '2025-05-15'),
(204, 'Auditoria Interna', 'Revisão de processos financeiros.', 4, 104, '2025-01-10', '2025-04-10'),
(205, 'Otimização Logística', 'Reestruturação da cadeia de suprimentos.', 5, 105, '2025-04-01', '2025-08-01');


INSERT INTO atividade (codigo, nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES
(301, 'Triagem de Currículos', 'Análise inicial de candidatos.', 101, '2025-01-01', '2025-01-31'),
(302, 'Configuração de Servidores', 'Instalação de novos equipamentos.', 102, '2025-02-20', '2025-03-15'),
(303, 'Criação de Peças Visuais', 'Design para anúncios.', 103, '2025-03-05', '2025-03-20'),
(304, 'Levantamento de Dados', 'Coleta de documentos financeiros.', 104, '2025-01-15', '2025-02-15'),
(305, 'Mapeamento de Rotas', 'Análise logística de entrega.', 105, '2025-04-05', '2025-05-01');


INSERT INTO atividade_projeto (cod_projeto, cod_atividade) VALUES
(201, 301),
(202, 302),
(203, 303),
(204, 304),
(205, 305);
