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




