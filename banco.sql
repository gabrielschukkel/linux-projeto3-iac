-- Arquivo: banco.sql

-- Descrição: Este arquivo contém o script SQL para criar uma tabela chamada "dados" que armazena informações dos alunos.

-- Limpar ambiente
DROP TABLE IF EXISTS dados;

-- Criação da tabela "dados" para armazenar informações dos alunos
CREATE TABLE dados (
    AlunoID INT NOT NULL, -- Identificador único do aluno, não pode ser nulo
    Nome VARCHAR(50) NOT NULL, -- Nome do aluno, não pode ser nulo
    Sobrenome VARCHAR(50) NOT NULL, -- Sobrenome do aluno, não pode ser nulo
    Endereco VARCHAR(150), -- Endereço do aluno, pode ser nulo
    Cidade VARCHAR(50), -- Cidade do aluno, pode ser nulo
    Host VARCHAR(50), -- Informações de host, pode ser nulo
    PRIMARY KEY (AlunoID) -- Definindo AlunoID como chave primária
);

-- Descrição: A tabela "dados" foi criada com as seguintes colunas:
--   - AlunoID: Identificador único do aluno (chave primária).
--   - Nome: Nome do aluno (não pode ser nulo).
--   - Sobrenome: Sobrenome do aluno (não pode ser nulo).
--   - Endereco: Endereço do aluno (pode ser nulo).
--   - Cidade: Cidade do aluno (pode ser nulo).
--   - Host: Informações de host (pode ser nulo).

-- Exemplo de inserção de dados na tabela "dados":
INSERT INTO dados (AlunoID, Nome, Sobrenome, Endereco, Cidade, Host)
VALUES
    (1, 'João', 'Silva', 'Rua A, 123', 'São Paulo', 'Host1'),
    (2, 'Maria', 'Santos', 'Avenida B, 456', 'Rio de Janeiro', 'Host2'),
    (3, 'Pedro', 'Oliveira', 'Praça C, 789', 'Belo Horizonte', 'Host3');

-- Descrição: Exemplos de inserção de dados na tabela "dados".

-- Consulta de todos os alunos na tabela "dados":
SELECT * FROM dados;

-- Descrição: Consulta para retornar todos os registros da tabela "dados".

-- Consulta de alunos por cidade:
SELECT * FROM dados WHERE Cidade = 'São Paulo';

-- Descrição: Consulta para retornar os alunos que moram em São Paulo.

-- Consulta de alunos por parte do nome:
SELECT * FROM dados WHERE Nome LIKE 'M%';

-- Descrição: Consulta para retornar os alunos cujo nome começa com a letra "M".

-- Atualização de informações do aluno:
UPDATE dados
SET Endereco = 'Rua X, 789'
WHERE AlunoID = 1;

-- Descrição: Atualiza o endereço do aluno com AlunoID igual a 1.

-- Exclusão de um aluno da tabela:
DELETE FROM dados WHERE AlunoID = 3;

-- Descrição: Remove o registro do aluno com AlunoID igual a 3.
