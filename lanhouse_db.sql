CREATE DATABASE lanhouse_db;
USE lanhouse_db;

CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    senha VARCHAR(100)
);

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cpf VARCHAR(14),
    telefone VARCHAR(20)
);

CREATE TABLE computadores (
    id_computador INT PRIMARY KEY AUTO_INCREMENT,
    numero_maquina INT,
    configuracao VARCHAR(200),
    status_pc VARCHAR(50)
);

CREATE TABLE funcionarios (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(10,2)
);

CREATE TABLE reservas (
    id_reserva INT PRIMARY KEY AUTO_INCREMENT,
    data_reserva DATE,
    horario_inicio TIME,
    horario_fim TIME,
    id_cliente INT,
    id_computador INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_computador) REFERENCES computadores(id_computador)
);

CREATE TABLE pagamentos (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    valor DECIMAL(10,2),
    data_pagamento DATE,
    forma_pagamento VARCHAR(50),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE servicos (
    id_servico INT PRIMARY KEY AUTO_INCREMENT,
    nome_servico VARCHAR(100),
    preco DECIMAL(10,2)
);

CREATE TABLE cliente_servico (
    id_cliente_servico INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_servico INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_servico) REFERENCES servicos(id_servico)
);

INSERT INTO usuarios (nome, email, senha) VALUES
('Carlos Silva','carlos@gmail.com','123'),
('Ana Lima','ana@gmail.com','123'),
('Pedro Souza','pedro@gmail.com','123'),
('Lucas Alves','lucas@gmail.com','123'),
('Marcos Lima','marcos@gmail.com','123'),
('Julia Costa','julia@gmail.com','123'),
('Fernanda Rocha','fernanda@gmail.com','123'),
('Bruno Melo','bruno@gmail.com','123'),
('Ricardo Santos','ricardo@gmail.com','123'),
('Gabriel Dias','gabriel@gmail.com','123'),
('Leonardo Alves','leo@gmail.com','123'),
('Amanda Freitas','amanda@gmail.com','123'),
('Rafael Nunes','rafael@gmail.com','123'),
('Joao Victor','joao@gmail.com','123'),
('Paulo Henrique','paulo@gmail.com','123');

INSERT INTO clientes (nome, cpf, telefone) VALUES
('Mateus Silva','111.111.111-11','85999990001'),
('Joao Pedro','222.222.222-22','85999990002'),
('Lucas Costa','333.333.333-33','85999990003'),
('Maria Eduarda','444.444.444-44','85999990004'),
('Fernanda Lima','555.555.555-55','85999990005'),
('Bruno Henrique','666.666.666-66','85999990006'),
('Rafael Souza','777.777.777-77','85999990007'),
('Paulo Victor','888.888.888-88','85999990008'),
('Carlos Eduardo','999.999.999-99','85999990009'),
('Amanda Rocha','101.101.101-10','85999990010'),
('Julia Alves','202.202.202-20','85999990011'),
('Pedro Henrique','303.303.303-30','85999990012'),
('Thiago Santos','404.404.404-40','85999990013'),
('Gabriel Lima','505.505.505-50','85999990014'),
('Leonardo Melo','606.606.606-60','85999990015');

INSERT INTO computadores (numero_maquina, configuracao, status_pc) VALUES
(1,'RTX 4060 / Ryzen 5 / 16GB','Disponivel'),
(2,'RTX 3060 / Ryzen 5 / 16GB','Disponivel'),
(3,'RTX 4070 / i7 / 32GB','Ocupado'),
(4,'GTX 1660 / i5 / 16GB','Disponivel'),
(5,'RTX 3050 / Ryzen 5 / 16GB','Manutencao'),
(6,'RTX 4060 / i5 / 16GB','Disponivel'),
(7,'RTX 3070 / i7 / 32GB','Disponivel'),
(8,'GTX 1650 / Ryzen 3 / 8GB','Ocupado'),
(9,'RTX 3060 / Ryzen 7 / 16GB','Disponivel'),
(10,'RTX 4070 / i9 / 32GB','Disponivel'),
(11,'GTX 1660 / i5 / 16GB','Disponivel'),
(12,'RTX 3050 / Ryzen 5 / 8GB','Ocupado'),
(13,'RTX 4060 / Ryzen 7 / 16GB','Disponivel'),
(14,'RTX 3070 / i7 / 32GB','Manutencao'),
(15,'RTX 4090 / i9 / 64GB','Disponivel');

INSERT INTO funcionarios (nome, cargo, salario) VALUES
('Carlos Silva','Atendente',1800),
('Ana Costa','Gerente',3500),
('Pedro Lima','Tecnico',2500),
('Lucas Rocha','Caixa',1700),
('Fernanda Alves','Atendente',1800),
('Bruno Santos','Tecnico',2600),
('Julia Melo','Caixa',1700),
('Amanda Souza','Atendente',1800),
('Ricardo Lima','Supervisor',3000),
('Gabriel Costa','Tecnico',2400),
('Thiago Alves','Atendente',1800),
('Joao Pedro','Caixa',1700),
('Paulo Henrique','Seguranca',2000),
('Leonardo Silva','Tecnico',2700),
('Rafael Rocha','Gerente',3600);

INSERT INTO reservas (data_reserva, horario_inicio, horario_fim, id_cliente, id_computador) VALUES
('2026-01-01','10:00:00','12:00:00',1,1),
('2026-01-02','11:00:00','13:00:00',2,2),
('2026-01-03','14:00:00','16:00:00',3,3),
('2026-01-04','15:00:00','17:00:00',4,4),
('2026-01-05','18:00:00','20:00:00',5,5),
('2026-01-06','09:00:00','11:00:00',6,6),
('2026-01-07','12:00:00','14:00:00',7,7),
('2026-01-08','13:00:00','15:00:00',8,8),
('2026-01-09','16:00:00','18:00:00',9,9),
('2026-01-10','19:00:00','21:00:00',10,10),
('2026-01-11','08:00:00','10:00:00',11,11),
('2026-01-12','17:00:00','19:00:00',12,12),
('2026-01-13','20:00:00','22:00:00',13,13),
('2026-01-14','10:00:00','12:00:00',14,14),
('2026-01-15','14:00:00','16:00:00',15,15);

INSERT INTO pagamentos (valor, data_pagamento, forma_pagamento, id_cliente) VALUES
(25.00,'2026-01-01','Pix',1),
(30.00,'2026-01-02','Cartao',2),
(40.00,'2026-01-03','Dinheiro',3),
(20.00,'2026-01-04','Pix',4),
(35.00,'2026-01-05','Cartao',5),
(28.00,'2026-01-06','Pix',6),
(22.00,'2026-01-07','Dinheiro',7),
(45.00,'2026-01-08','Cartao',8),
(18.00,'2026-01-09','Pix',9),
(50.00,'2026-01-10','Dinheiro',10),
(27.00,'2026-01-11','Pix',11),
(38.00,'2026-01-12','Cartao',12),
(33.00,'2026-01-13','Dinheiro',13),
(24.00,'2026-01-14','Pix',14),
(60.00,'2026-01-15','Cartao',15);

INSERT INTO servicos (nome_servico, preco) VALUES
('Impressao',5),
('Scan',3),
('Snack',10),
('Refrigerante',7),
('Headset Premium',15),
('Controle Xbox',12),
('PlayStation',20),
('VR Gaming',30),
('Internet Premium',8),
('Streaming Room',25),
('Mouse Gamer',5),
('Teclado Gamer',5),
('Sala Privada',40),
('Cadeira Premium',10),
('Carregador',4);

INSERT INTO cliente_servico (id_cliente, id_servico) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15);

SHOW TABLES;

SELECT * FROM usuarios;
SELECT * FROM clientes;
SELECT * FROM computadores;
SELECT * FROM funcionarios;
SELECT * FROM reservas;
SELECT * FROM pagamentos;
SELECT * FROM servicos;
SELECT * FROM cliente_servico;