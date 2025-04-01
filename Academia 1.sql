CREATE DATABASE academia;
USE academia;

CREATE TABLE alunos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    telefone VARCHAR(20)
);


CREATE TABLE planos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    preco_mensal DECIMAL(10,2)
);


CREATE TABLE matriculas (
    id_aluno INT,
    id_plano INT,
    data_inicio DATE,
    PRIMARY KEY (id_aluno, id_plano),
    FOREIGN KEY (id_aluno) REFERENCES alunos(id),
    FOREIGN KEY (id_plano) REFERENCES planos(id)
);


CREATE TABLE aulas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    horario TIME
);


CREATE TABLE presencas (
    id_aluno INT,
    id_aula INT,
    data DATE,
    PRIMARY KEY (id_aluno, id_aula, data),
    FOREIGN KEY (id_aluno) REFERENCES alunos(id),
    FOREIGN KEY (id_aula) REFERENCES aulas(id)
);