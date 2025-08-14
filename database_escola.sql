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
-- Insert dados professor
INSERT INTO professor(id_professor,nome,especialidade,salario,uf) VALUES 
(1,'João da Silva','Banco de Dados','2500.00','PR');

-- Insert diciplinas
INSERT INTO diciplina(nome,id_professor,carga_horaria) VALUES
('Banco de Dados Iniciante',1,60);

-- Alunos
INSERT INTO aluno( nome, seco, data_nascimento, nota_fiscal,ativo) VALUES
('Isabel Heerdt','F','2007-05-10',8.5, TRUE);
