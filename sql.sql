CREATE DATABASE Biblioteca;
USE Biblioteca;

CREATE TABLE autores (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
nacionalidade VARCHAR(100)
);

CREATE TABLE categorias (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL);

CREATE TABLE livroS (
id INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(255) NOT NULL,
id_autor INT,
id_categoria INT,
ano_publicacao INT,
FOREIGN KEY (id_autor) REFERENCES autores(id),
FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

INSERT INTO autores (nome, nacionalidade) VALUES
('Machado de Assis', 'Brasileiro'),
('George Orwell', 'Britânico'),
('J.K. Rowling', 'Britânica');

INSERT INTO categorias (nome) VALUES
('Romance'),
('Ficção Científica'),
('Fantasia');




