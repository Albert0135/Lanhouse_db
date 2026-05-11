CREATE DATABASE financeira_db;
USE financeira_db;

-- TABELA USUARIOS

CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    senha VARCHAR(100)
);

-- TABELA TIMES

CREATE TABLE times (
    id_time INT PRIMARY KEY AUTO_INCREMENT,
    nome_time VARCHAR(100),
    jogo VARCHAR(50),
    data_criacao DATE
);

-- TABELA JOGADORES

CREATE TABLE jogadores (
    id_jogador INT PRIMARY KEY AUTO_INCREMENT,
    nickname VARCHAR(50),
    idade INT,
    funcao VARCHAR(50),
    id_time INT,
    FOREIGN KEY (id_time) REFERENCES times(id_time)
);

-- TABELA CAMPEONATOS

CREATE TABLE campeonatos (
    id_campeonato INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    premio DECIMAL(10,2),
    data_evento DATE
);

-- TABELA PATROCINADORES

CREATE TABLE patrocinadores (
    id_patrocinadores INT PRIMARY KEY AUTO_INCREMENT,
    empresa VARCHAR(100),
    valor_investido DECIMAL(10,2)
);

-- TABELA CONTRATOS

CREATE TABLE contratos (
    id_contrato INT PRIMARY KEY AUTO_INCREMENT,
    id_jogador INT,
    id_patrocinador INT,
    salario DECIMAL(10,2),
    duracao VARCHAR(50),
    FOREIGN KEY (id_jogador) REFERENCES jogadores(id_jogador),
    FOREIGN KEY (id_patrocinador) REFERENCES patrocinadores(id_patrocinadores)
);

-- TABELA PAGAMENTOS

CREATE TABLE pagamentos (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    id_jogador INT,
    valor DECIMAL(10,2),
    data_pagamento DATE,
    FOREIGN KEY (id_jogador) REFERENCES jogadores(id_jogador)
);

-- TABELA PARTICIPACAO

CREATE TABLE participacao (
    id_participacao INT PRIMARY KEY AUTO_INCREMENT,
    id_time INT,
    id_campeonato INT,
    FOREIGN KEY (id_time) REFERENCES times(id_time),
    FOREIGN KEY (id_campeonato) REFERENCES campeonatos(id_campeonato)
);

-- INSERTS USUARIOS (15)

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

-- INSERTS TIMES (15)

INSERT INTO times (nome_time, jogo, data_criacao) VALUES
('Furia','CS2','2017-01-01'),
('LOUD','Valorant','2019-03-10'),
('Pain Gaming','LoL','2013-02-12'),
('MIBR','CS2','2003-01-01'),
('Fluxo','Free Fire','2021-06-01'),
('Red Canids','LoL','2015-05-15'),
('INTZ','Valorant','2014-04-10'),
('Liquid','Dota 2','2000-01-01'),
('NAVI','CS2','2009-08-01'),
('G2','Valorant','2015-02-20'),
('Cloud9','LoL','2012-05-30'),
('FaZe','CS2','2010-10-10'),
('Sentinels','Valorant','2018-03-14'),
('T1','LoL','2005-07-20'),
('Vitality','CS2','2017-08-08');

-- INSERTS JOGADORES (15)

INSERT INTO jogadores (nickname, idade, funcao, id_time) VALUES
('Fallen',32,'AWP',1),
('Aspas',22,'Duelista',2),
('Brance',21,'ADC',3),
('Coldzera',30,'Rifler',4),
('Nobru',24,'Capitao',5),
('Aegis',20,'Mid',6),
('Keznit',23,'Entry',7),
('Yatoro',21,'Carry',8),
('Simple',26,'AWP',9),
('Leaf',20,'Duelista',10),
('Berserker',21,'ADC',11),
('Rain',29,'Rifler',12),
('TenZ',24,'Duelista',13),
('Faker',28,'Mid',14),
('Zywoo',23,'AWP',15);

-- INSERTS CAMPEONATOS (15)

INSERT INTO campeonatos (nome, premio, data_evento) VALUES
('Major CS',1000000,'2026-01-10'),
('VCT Champions',800000,'2026-02-12'),
('CBLOL',300000,'2026-03-15'),
('Free Fire World',500000,'2026-04-20'),
('IEM Katowice',700000,'2026-05-01'),
('DreamHack',250000,'2026-06-11'),
('ESL Pro League',600000,'2026-07-22'),
('TI Dota',2000000,'2026-08-10'),
('Worlds LoL',1500000,'2026-09-09'),
('Blast Premier',450000,'2026-10-14'),
('Valorant Masters',750000,'2026-11-17'),
('Gamers Club',100000,'2026-12-01'),
('Red Bull Cup',200000,'2026-12-20'),
('Liga GG',120000,'2026-05-30'),
('Arena Finals',300000,'2026-08-08');


-- INSERTS PATROCINADORES (15)

INSERT INTO patrocinadores (empresa, valor_investido) VALUES
('Red Bull',500000),
('Nike',700000),
('Adidas',650000),
('Intel',900000),
('HyperX',300000),
('Logitech',400000),
('Razer',550000),
('Samsung',800000),
('LG',350000),
('Monster',450000),
('Puma',380000),
('Dell',600000),
('Corsair',420000),
('Acer',500000),
('Asus',750000);

-- INSERTS CONTRATOS (15)

INSERT INTO contratos (id_jogador, id_patrocinador, salario, duracao) VALUES
(1,1,20000,'12 meses'),
(2,2,18000,'10 meses'),
(3,3,15000,'8 meses'),
(4,4,25000,'24 meses'),
(5,5,12000,'6 meses'),
(6,6,10000,'12 meses'),
(7,7,17000,'18 meses'),
(8,8,22000,'24 meses'),
(9,9,30000,'36 meses'),
(10,10,16000,'12 meses'),
(11,11,14000,'10 meses'),
(12,12,28000,'24 meses'),
(13,13,26000,'18 meses'),
(14,14,35000,'36 meses'),
(15,15,32000,'24 meses');

-- INSERTS PAGAMENTOS (15)

INSERT INTO pagamentos (id_jogador, valor, data_pagamento) VALUES
(1,5000,'2026-01-01'),
(2,4500,'2026-01-02'),
(3,4000,'2026-01-03'),
(4,7000,'2026-01-04'),
(5,3000,'2026-01-05'),
(6,3500,'2026-01-06'),
(7,4800,'2026-01-07'),
(8,6000,'2026-01-08'),
(9,8000,'2026-01-09'),
(10,4200,'2026-01-10'),
(11,3900,'2026-01-11'),
(12,7500,'2026-01-12'),
(13,7200,'2026-01-13'),
(14,9000,'2026-01-14'),
(15,8500,'2026-01-15');

-- INSERTS PARTICIPACAO (15)

INSERT INTO participacao (id_time, id_campeonato) VALUES
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

SELECT * FROM pagamentos;