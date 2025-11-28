# Sistema de Gerenciamento de Agendamentos – BarberTime

Este repositório contém o projeto prático de banco de dados desenvolvido para a disciplina de Modelagem de Banco de Dados, contemplando as etapas de modelagem conceitual, modelo lógico, normalização e manipulação de dados utilizando SQL.

## Descrição do Projeto

O sistema BarberTime foi projetado para gerenciar os agendamentos de uma barbearia, permitindo o cadastro de clientes, barbeiros, serviços oferecidos, definição de horários de trabalho e controle dos atendimentos realizados.

## Tecnologias Utilizadas

- SQL (compatível com MySQL ou PostgreSQL)
- Git e GitHub
- Ferramenta de modelagem DER

## Estrutura do Repositório

- `schema.sql`: Script de criação das tabelas, chaves primárias e estrangeiras (DDL)
- `dml.sql`: Script contendo comandos de inserção, consulta, atualização e exclusão de dados (DML)
- `README.md`: Documento de descrição e instruções do projeto

## Como Executar o Projeto

1. Criar um banco de dados vazio no sistema gerenciador de banco de dados (MySQL ou PostgreSQL).
2. Executar o arquivo `schema.sql` para criar a estrutura das tabelas.
3. Executar o arquivo `dml.sql` para inserir e manipular os dados.
4. Utilizar os comandos SELECT presentes no script para consultar os dados.

## Funcionalidades Implementadas

- Cadastro de clientes, barbeiros e serviços
- Definição de horários de trabalho dos barbeiros
- Registro de agendamentos de atendimento
- Consultas SQL utilizando JOIN entre tabelas
- Atualização e exclusão de registros respeitando a integridade referencial

## Status do Projeto

Projeto finalizado conforme os requisitos das Experiências Práticas I, II, III e IV da disciplina de Modelagem de Banco de Dados.
