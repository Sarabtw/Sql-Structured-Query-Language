CREATE DATABASE academia;
USE academia;


CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20)
);


CREATE TABLE planos (
    id INT AUTO_INCREMENT PRIMARY KEY,
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
    id INT AUTO_INCREMENT PRIMARY KEY,
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


INSERT INTO alunos (nome, telefone) VALUES ('João Silva', '11999999999');
INSERT INTO alunos (nome, telefone) VALUES ('Maria Oliveira', '11988888888');
INSERT INTO alunos (nome, telefone) VALUES ('Carlos Souza', '11977777777');
INSERT INTO alunos (nome, telefone) VALUES ('Ana Lima', '11966666666');
INSERT INTO alunos (nome, telefone) VALUES ('Pedro Santos', '11955555555');


INSERT INTO planos (nome, preco_mensal) VALUES ('Básico', 50.00);
INSERT INTO planos (nome, preco_mensal) VALUES ('Intermediário', 70.00);
INSERT INTO planos (nome, preco_mensal) VALUES ('Avançado', 100.00);


INSERT INTO matriculas (id_aluno, id_plano, data_inicio) VALUES (1, 1, '2024-03-01');
INSERT INTO matriculas (id_aluno, id_plano, data_inicio) VALUES (2, 2, '2024-03-02');
INSERT INTO matriculas (id_aluno, id_plano, data_inicio) VALUES (3, 3, '2024-03-03');

INSERT INTO aulas (nome, horario) VALUES ('Musculação', '08:00:00');
INSERT INTO aulas (nome, horario) VALUES ('Spinning', '09:00:00');
INSERT INTO aulas (nome, horario) VALUES ('Yoga', '10:00:00');


INSERT INTO presencas (id_aluno, id_aula, data) VALUES (1, 1, '2024-03-10');
INSERT INTO presencas (id_aluno, id_aula, data) VALUES (2, 2, '2024-03-11');
INSERT INTO presencas (id_aluno, id_aula, data) VALUES (3, 3, '2024-03-12');


UPDATE alunos SET telefone = '11911111111' WHERE id = 1;


DELETE FROM presencas WHERE id_aluno = 3 AND id_aula = 3;
