INSERT INTO departamento (codigo, descricao, cod_gerente)
VALUES 
(10, 'Recursos Humanos', NULL),
(20, 'Tecnologia da Informação', NULL),
(30, 'Financeiro', NULL),
(40, 'Marketing', NULL),
(50, 'Logística', NULL);


INSERT INTO funcionario (codigo, nome, sexo, dt_nasc, salario, cod_depto)
VALUES 
(1, 'Ana Silva', 'F', '1990-05-12', 4500.00, 10),
(2, 'Bruno Lima', 'M', '1985-08-20', 5000.00, 20),
(3, 'Carlos Souza', 'M', '1978-11-10', 6200.00, 30),
(4, 'Daniela Alves', 'F', '1993-03-22', 4700.00, 40),
(5, 'Eduardo Santos', 'M', '1980-07-15', 5500.00, 50);


UPDATE departamento SET cod_gerente = 1 WHERE codigo = 10;
UPDATE departamento SET cod_gerente = 2 WHERE codigo = 20;
UPDATE departamento SET cod_gerente = 3 WHERE codigo = 30;
UPDATE departamento SET cod_gerente = 4 WHERE codigo = 40;
UPDATE departamento SET cod_gerente = 5 WHERE codigo = 50;


INSERT INTO projeto (codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
VALUES 
(100, 'Projeto A', 'Implantação de novo sistema', 20, 2, '2024-01-10', '2024-06-30'),
(101, 'Projeto B', 'Reestruturação financeira', 30, 3, '2024-02-15', '2024-08-01'),
(102, 'Projeto C', 'Campanha de marketing', 40, 4, '2024-03-01', '2024-07-15'),
(103, 'Projeto D', 'Sistema de logística', 50, 5, '2024-04-05', '2024-09-20'),
(104, 'Projeto E', 'Treinamento interno', 10, 1, '2024-05-10', '2024-10-30');

INSERT INTO atividade (codigo, nome, descricao, cod_responsavel, data_inicio, data_fim)
VALUES 
(200, 'Análise de Requisitos', 'Levantamento das necessidades', 2, '2024-01-15', '2024-01-30'),
(201, 'Desenvolvimento Back-end', 'Codificação da API', 2, '2024-02-01', '2024-03-30'),
(202, 'Planejamento Financeiro', 'Análise de custos e receitas', 3, '2024-02-20', '2024-03-15'),
(203, 'Criação de Campanha', 'Desenvolver materiais publicitários', 4, '2024-03-10', '2024-04-10'),
(204, 'Treinamento Operacional', 'Capacitação de equipe logística', 5, '2024-05-15', '2024-06-15')
INSERT INTO atividade_projeto (cod_projeto, cod_atividade)
VALUES 
(100, 200),
(100, 201),
(101, 202),
(102, 203),
(103, 204);
