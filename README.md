# Sistema Financeiro para eSports
---
### Alunos:
Albert França - 2025202349
Fabio Vinicius - 2025201173
Brenno Elimar - 2025

---

## Objetivo do Projeto
O projeto foi desenvolvido com o objetivo de criar um banco de dados para gerenciar informações financeiras de organizações de eSports, permitindo o controle de jogadores, times, campeonatos, patrocinadores, contratos e pagamentos.

---

# Modelo Conceitual

## O que é?
O modelo conceitual representa a estrutura do sistema de forma visual e abstrata, mostrando as entidades, atributos e relacionamentos do banco de dados.

Ele serve para entender como as informações se conectam antes da implementação no banco.

---

# Entidades do Sistema

## USUARIOS
Armazena os usuários do sistema.

### Atributos:
- id_usuario
- nome
- email
- senha

---

## TIMES
Armazena os times de eSports.

### Atributos:
- id_time
- nome_time
- jogo
- data_criacao

---

## JOGADORES
Armazena os jogadores pertencentes aos times.

### Atributos:
- id_jogador
- nickname
- idade
- funcao
- id_time

---

## CAMPEONATOS
Armazena os campeonatos realizados.

### Atributos:
- id_campeonato
- nome
- premio
- data_evento

---

## PATROCINADORES
Armazena os patrocinadores dos contratos.

### Atributos:
- id_patrocinadores
- empresa
- valor_investido

---

## CONTRATOS
Armazena os contratos dos jogadores.

### Atributos:
- id_contrato
- salario
- duracao
- id_jogador
- id_patrocinador

---

## PAGAMENTOS
Armazena os pagamentos realizados aos jogadores.

### Atributos:
- id_pagamento
- valor
- data_pagamento
- id_jogador

---

## PARTICIPACAO
Tabela associativa responsável por relacionar times e campeonatos.

### Atributos:
- id_participacao
- id_time
- id_campeonato

---

# Relacionamentos do Modelo Conceitual

| Relacionamento | Cardinalidade |
|---|---|
| TIMES possui JOGADORES | 1:N |
| JOGADORES recebe PAGAMENTOS | 1:N |
| JOGADORES assina CONTRATOS | 1:N |
| PATROCINADORES financia CONTRATOS | 1:N |
| CAMPEONATOS participa TIMES | N:N |

---

# Modelo Físico

## O que é?
O modelo físico representa a implementação real do banco de dados utilizando SQL.

Nele são definidos:
- tabelas
- tipos de dados
- chaves primárias
- chaves estrangeiras
- relacionamentos
- inserts

---

# Passo a Passo do Modelo Físico

## 1. Criação do Banco de Dados

Foi criado o banco:

```sql
CREATE DATABASE financeira_db;
```

Depois foi selecionado:

```sql
USE financeira_db;
```

---

## 2. Criação das Tabelas

Foram criadas as tabelas:
- usuarios
- times
- jogadores
- campeonatos
- patrocinadores
- contratos
- pagamentos
- participacao

Cada tabela possui:
- chave primária (`PRIMARY KEY`)
- auto incremento (`AUTO_INCREMENT`)
- tipos de dados apropriados

---

## 3. Definição das Chaves Estrangeiras

As tabelas foram conectadas utilizando `FOREIGN KEY`.

### Exemplo:

```sql
FOREIGN KEY (id_time) REFERENCES times(id_time)
```

Isso garante integridade entre os dados.

---

# Relacionamentos Implementados

| Tabela | Chave Estrangeira | Referência |
|---|---|---|
| jogadores | id_time | times |
| contratos | id_jogador | jogadores |
| contratos | id_patrocinador | patrocinadores |
| pagamentos | id_jogador | jogadores |
| participacao | id_time | times |
| participacao | id_campeonato | campeonatos |

---

# Inserção de Dados

Foram inseridos:
- 15 registros em cada tabela

Utilizando o comando:

```sql
INSERT INTO nome_tabela VALUES (...);
```

---

# Consultas

Para visualizar os dados foi utilizado:

```sql
SELECT * FROM nome_tabela;
```

E para visualizar todas as tabelas:

```sql
SHOW TABLES;
```

---

<img width="1335" height="669" alt="image" src="https://github.com/user-attachments/assets/3016c9c8-e055-4cae-9ac6-765e7ebf50fe" />
