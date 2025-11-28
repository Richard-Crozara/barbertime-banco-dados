-- =====================================
-- DML - Manipulação de Dados
-- Projeto: Sistema de Gerenciamento de Agendamentos - BarberTime
-- =====================================

-- =========================
-- INSERTS (Povoamento)
-- =========================

INSERT INTO cliente (nome, telefone, email) VALUES
('João Silva', '99999-8888', 'joao@gmail.com'),
('Maria Oliveira', '98888-7777', 'maria@gmail.com');

INSERT INTO barbeiro (nome, telefone, especializacao) VALUES
('Lucas Pereira', '97777-6666', 'Corte Masculino'),
('Rafael Costa', '96666-5555', 'Barba e Sobrancelha');

INSERT INTO servico (nome, preco, duracao_minutos) VALUES
('Corte Masculino', 40.00, 30),
('Barba', 30.00, 20);

INSERT INTO horario_trabalho (id_barbeiro, dia_semana, hora_inicio, hora_fim) VALUES
(1, 'Segunda-feira', '09:00', '18:00'),
(2, 'Terça-feira', '10:00', '19:00');

INSERT INTO agendamento (id_cliente, id_barbeiro, id_servico, data_agendamento, hora_agendamento, status) VALUES
(1, 1, 1, '2025-03-08', '13:00', 'Agendado'),
(2, 2, 2, '2025-03-09', '15:00', 'Agendado');

-- =========================
-- SELECTS (Consultas)
-- =========================

SELECT * FROM agendamento;

SELECT 
    c.nome AS cliente,
    b.nome AS barbeiro,
    s.nome AS servico,
    a.data_agendamento,
    a.hora_agendamento,
    a.status
FROM agendamento a
JOIN cliente c ON a.id_cliente = c.id_cliente
JOIN barbeiro b ON a.id_barbeiro = b.id_barbeiro
JOIN servico s ON a.id_servico = s.id_servico;

SELECT *
FROM agendamento
WHERE id_cliente = 1
ORDER BY data_agendamento;

SELECT nome, preco
FROM servico
ORDER BY preco DESC
LIMIT 5;

-- =========================
-- UPDATES
-- =========================

UPDATE cliente
SET telefone = '91111-2222'
WHERE id_cliente = 1;

UPDATE agendamento
SET status = 'Concluído'
WHERE id_agendamento = 1;

UPDATE servico
SET preco = 45.00
WHERE nome = 'Corte Masculino';

-- =========================
-- DELETES
-- =========================

DELETE FROM agendamento
WHERE id_agendamento = 2;

DELETE FROM horario_trabalho
WHERE id_horario = 2;

DELETE FROM cliente
WHERE id_cliente = 2;
