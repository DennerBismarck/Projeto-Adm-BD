CREATE TABLE departamento (
    codigo INT PRIMARY KEY,
    descricao VARCHAR(100),
    cod_gerente INT 
);

CREATE TABLE funcionario (
    codigo INT PRIMARY KEY,
    nome VARCHAR(100),
    sexo CHAR(1),
    dt_nasc DATE,
    salario DECIMAL(10,2),
    cod_depto INT 
);

CREATE TABLE projeto (
    codigo INT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    cod_depto INT,
    cod_responsavel INT,
    data_inicio DATE,
    data_fim DATE
);

CREATE TABLE atividade (
    codigo INT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    cod_responsavel INT,
    data_inicio DATE,
    data_fim DATE
);

CREATE TABLE atividade_projeto (
    cod_projeto INT,
    cod_atividade INT,
    PRIMARY KEY (cod_projeto, cod_atividade)
);


ALTER TABLE funcionario
ADD FOREIGN KEY (cod_depto) REFERENCES departamento(codigo);

ALTER TABLE departamento
ADD FOREIGN KEY (cod_gerente) REFERENCES funcionario(codigo);

ALTER TABLE projeto
ADD FOREIGN KEY (cod_depto) REFERENCES departamento(codigo),
ADD FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo);

ALTER TABLE atividade
ADD FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo);

ALTER TABLE atividade_projeto
ADD FOREIGN KEY (cod_projeto) REFERENCES projeto(codigo),
ADD FOREIGN KEY (cod_atividade) REFERENCES atividade(codigo);
