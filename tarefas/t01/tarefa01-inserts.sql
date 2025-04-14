-- Departamentos
INSERT INTO departamento (codigo, descricao, cod_gerente) VALUES
(1, 'TI', NULL),
(2, 'Recursos Humanos', NULL),
(3, 'Marketing', NULL),
(4, 'Financeiro', NULL);


INSERT INTO funcionario (codigo, nome, sexo, dt_nasc, salario, cod_depto) VALUES
(1, 'João Silva', 'M', '1980-05-12', 5000.00, 1),
(2, 'Maria Santos', 'F', '1975-11-03', 7500.00, 2),
(3, 'Carlos Lima', 'M', '1992-08-19', 4800.00, 1),
(4, 'Ana Costa', 'F', '1988-02-10', 6000.00, 3),
(5, 'Bruno Rocha', 'M', '1995-06-22', 4500.00, 2),
(6, 'Paula Menezes', 'F', '1999-12-13', 3000.00, 3),
(7, 'Lucas Almeida', 'M', '1990-01-01', 8000.00, NULL), 
(8, 'Fernanda Lemos', 'F', '1997-03-15', 7200.00, 4),
(9, 'Vinícius Prado', 'M', '2000-07-17', 3900.00, 4),
(10, 'Camila Dias', 'F', '1998-10-30', 5500.00, 1);


UPDATE departamento SET cod_gerente = 1 WHERE codigo = 1;
UPDATE departamento SET cod_gerente = 2 WHERE codigo = 2;
UPDATE departamento SET cod_gerente = 4 WHERE codigo = 3;
UPDATE departamento SET cod_gerente = 8 WHERE codigo = 4;

-- Projetos
INSERT INTO projeto (codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) VALUES
(1, 'Sistema Web', 'Desenvolvimento de sistema web', 1, 3, '2024-01-01', '2024-06-30'),
(2, 'Recrutamento 2024', 'Nova política de contratação', 2, 2, '2024-02-15', '2024-04-30'),
(3, 'Campanha de Marketing', 'Divulgação institucional', 3, 6, '2024-03-01', '2024-08-31'),
(4, 'Auditoria Fiscal', 'Auditoria do segundo semestre', 4, 7, '2024-01-15', '2024-05-15'),
(5, 'Migrar Servidores', 'Migração para nuvem', 1, 4, '2024-04-01', '2024-07-31'); -- Responsável de outro departamento


INSERT INTO atividade (codigo, nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES
(1, 'Criar Banco de Dados', 'Modelagem inicial', 3, '2024-01-05', '2024-01-15'),
(2, 'Selecionar candidatos', 'Entrevistas iniciais', 2, '2024-02-20', '2024-03-01'),
(3, 'Design Gráfico', 'Criação de banners', 6, '2024-03-10', '2024-04-10'),
(4, 'Revisão Fiscal', 'Verificação de impostos', 9, '2024-01-20', '2024-05-20'),
(5, 'Backup Dados', 'Configuração automática de backup', 4, '2024-03-25', '2024-03-30');

INSERT INTO atividade_projeto (cod_projeto, cod_atividade) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
