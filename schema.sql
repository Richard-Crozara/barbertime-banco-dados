-- Criação do banco de dados
CREATE DATABASE barbertimedb;
\c barbertimedb;

-- Tabela Cliente
CREATE TABLE cliente (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100) UNIQUE
);

-- Tabela Barbeiro
CREATE TABLE barbeiro (
    id_barbeiro SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    especializacao VARCHAR(100)
);

-- Tabela Servico
CREATE TABLE servico (
    id_servico SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    duracao_minutos INT NOT NULL
);

-- Tabela Horario_Trabalho
CREATE TABLE horario_trabalho (
    id_horario SERIAL PRIMARY KEY,
    id_barbeiro INT NOT NULL,
    dia_semana VARCHAR(15) NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fim TIME NOT NULL,
    CONSTRAINT fk_horario_barbeiro
        FOREIGN KEY (id_barbeiro)
        REFERENCES barbeiro(id_barbeiro)
        ON DELETE CASCADE
);

-- Tabela Agendamento
CREATE TABLE agendamento (
    id_agendamento SERIAL PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_barbeiro INT NOT NULL,
    id_servico INT NOT NULL,
    data_agendamento DATE NOT NULL,
    hora_agendamento TIME NOT NULL,
    status VARCHAR(20) DEFAULT 'Agendado',
    CONSTRAINT fk_agendamento_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),
    CONSTRAINT fk_agendamento_barbeiro
        FOREIGN KEY (id_barbeiro)
        REFERENCES barbeiro(id_barbeiro),
    CONSTRAINT fk_agendamento_servico
        FOREIGN KEY (id_servico)
        REFERENCES servico(id_servico)
);
