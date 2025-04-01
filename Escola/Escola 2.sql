CREATE DATABASE IF NOT EXISTS EscolaDB; USE EscolaDB;
USE EscolaDB;

CREATE TABLE Estudantes ( 
id_estudante INT AUTO_INCREMENT PRIMARY KEY, 
nome TEXT NOT NULL, 
data_nascimento DATE NOT NULL, 
endereco TEXT NOT NULL, 
telefone VARCHAR(20) NOT NULL, 
email TEXT NOT NULL 
);

CREATE TABLE Instrutores ( 
id_instrutor INT AUTO_INCREMENT PRIMARY KEY, 
nome TEXT NOT NULL, 
especialidade TEXT NOT NULL, 
telefone VARCHAR(20) NOT NULL, 
email TEXT NOT NULL 
);

CREATE TABLE Materias ( 
id_materia INT AUTO_INCREMENT PRIMARY KEY, 
nome TEXT NOT NULL, 
carga_horaria INT NOT NULL 
);

CREATE TABLE Classes ( 
id_classe INT AUTO_INCREMENT PRIMARY KEY, 
nome TEXT NOT NULL, 
id_instrutor INT NOT NULL, 
FOREIGN KEY (id_instrutor) REFERENCES Instrutores(id_instrutor) 
);

CREATE TABLE Inscricoes ( 
id_inscricao INT AUTO_INCREMENT PRIMARY KEY, 
id_estudante INT NOT NULL, 
id_classe INT NOT NULL, 
data_inscricao DATE NOT NULL, 
FOREIGN KEY (id_estudante) REFERENCES Estudantes(id_estudante), 
FOREIGN KEY (id_classe) REFERENCES Classes(id_classe) 
);

INSERT INTO Estudantes (nome, data_nascimento, endereco, telefone, email) VALUES
 ('Roberto Lima', '2004-09-15', 'Avenida Central, 456', '11933332222', 'roberto@email.com'),
 ('Juliana Castro', '2005-02-28', 'Rua das Palmeiras, 789', '11944445555', 'juliana@email.com');

INSERT INTO Instrutores (nome, especialidade, telefone, email) VALUES 
('Marcos Oliveira', 'Física', '11922223333', 'marcos@email.com'), 
('Patrícia Mendes', 'História', '11911112222', 'patricia@email.com');

INSERT INTO Materias (nome, carga_horaria) VALUES 
('Física', 70),
 ('História', 40);
 
 INSERT INTO Classes (nome, id_instrutor) VALUES 
 ('Turma X', 1), 
 ('Turma Y', 2);
 
 INSERT INTO Inscricoes (id_estudante, id_classe, data_inscricao) VALUES 
 (1, 1, '2025-04-10'), 
 (2, 2, '2025-04-11');
 
 UPDATE Estudantes SET telefone = '11977778888' WHERE id_estudante = 1;
 
 DELETE FROM Inscricoes WHERE id_inscricao = 2;



