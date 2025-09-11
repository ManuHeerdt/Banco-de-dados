CREATE DATABASE escola;

USE escola;

CREATE TABLE professor(
id_professor INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
especialidade VARCHAR(100),
salario DECIMAL(10,2),
uf CHAR(2)
);


CREATE TABLE diciplina(
id_diciplina INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
id_professor INT,
carga_horaria INT,
FOREIGN KEY (id_professor) REFERENCES professor(id_professor)
);

CREATE TABLE aluno(
id_aluno INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
seco CHAR(1),
data_nascimento DATE,
nota_fiscal DECIMAL(4,2),
ativo BOOLEAN
);



CREATE TABLE curso(
id_curso  INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
carga_horaria INT,
modalidade VARCHAR(50)
);
CREATE TABLE matricula(
id_matricula INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
id_aluno INT,
id_curso INT,
data_matricula DATE,
FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);


CREATE TABLE login(
id_login INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
id_aluno INT,
data_hora DATETIME,
ip VARCHAR (40),
sucesso BOOLEAN,
FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
);

SHOW TABLES;
USE escola;
-- Insert dados professor
INSERT INTO professor(nome,especialidade,salario,uf) VALUES
('João da Silva','Banco de Dados','2500.00','PR'),
('Lucas Oliveira','Matematica','4000.00','PR'),
('Sofia Martins','Geografia','3000.00','PR'),
('Gabriel Fernandes','Quimica','5000.00','PR'),
('Isabella Costa','Portugues','4500.00','PR'),
('Rafael Almeida','Historia','3000.00','PR'),
('Beatriz Santos','Biologia','3500.00','PR'),
('Thiago Rocha','Robotica','4000.00','PR'),
('Lara Nogueira','Fisica','5000.00','PR'),
('Klaus Jenzer','Espanhol','6000.00','PR');


SELECT * FROM professor;
-- Insert diciplinas
INSERT INTO disciplina(nome,id_professor,carga_horaria) VALUES
('Banco de Dados Iniciante',1,60),
('Espanhol Iniciante',14,40),
('Fisica Lei de Newton',13,60),
('Robotica Iniciante',12,40),
('Bilogia repteis',11,60),
('Historia Guerras',10,80),
('Portugues Redação',9,60),
('Quimica Hidrocarbonetos',8,60),
('Geografia Climas',7,40),
('Matematica Frações',6,60),
('Redação conto',4,40);

-- Alunos
INSERT INTO aluno( nome, sexo, data_nascimento, nota_final,ativo) VALUES
('Isabel Heerdt','F','2007-05-10',8.5, TRUE),
('Jessica Nunes','F','2008-08-09',9.0,TRUE),
('Josiane Ramos','F','2007-03-02',8.7,TRUE),
('Mario Alencar', 'M','2007-05-10',6.0, TRUE),
('Mateus Carvalho','M','2007-08-07-02',7.8,TRUE),
('Amanda Lima', 'F','2007-06-08',6.7,TRUE),
('Adriana Campos','F','2006-09-09',9.9,TRUE),
('Katherine Pirrce','F','2008-02-09',8.9,TRUE),
('Damon Salvatore','M','2007-09-08',8.6,TRUE),
('Elena Gilbert','F','2007-05-03',8.0,TRUE),
('Stefam Salvatore','M','2006-09-08',1.0,TRUE);
