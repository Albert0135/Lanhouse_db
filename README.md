# Sistema de Gerenciamento para Lan House
---
### Alunos:
*Albert França - 2025202349*

*Fabio Vinicius - 2025201173*

*Brenno Elimar - 2025201730*


## Objetivo do Projeto
O projeto foi desenvolvido com o objetivo de criar um banco de dados para gerenciar uma Lan House, permitindo o controle de clientes, computadores, reservas, pagamentos e funcionários.

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

## CLIENTES
Armazena os clientes da Lan House.

### Atributos:
- id_cliente
- nome
- cpf
- telefone

---

## COMPUTADORES
Armazena os computadores disponíveis.

### Atributos:
- id_computador
- numero_maquina
- configuracao
- status

---

## RESERVAS
Armazena as reservas feitas pelos clientes.

### Atributos:
- id_reserva
- data_reserva
- horario_inicio
- horario_fim
- id_cliente
- id_computador

---

## FUNCIONARIOS
Armazena os funcionários da Lan House.

### Atributos:
- id_funcionario
- nome
- cargo
- salario

---

## PAGAMENTOS
Armazena os pagamentos realizados pelos clientes.

### Atributos:
- id_pagamento
- valor
- data_pagamento
- forma_pagamento
- id_cliente

---

## SERVICOS
Armazena os serviços extras oferecidos pela Lan House.

### Atributos:
- id_servico
- nome_servico
- preco

---

## Relacionamentos do Modelo Conceitual

| Relacionamento | Cardinalidade |
|---|---|
| CLIENTES realiza RESERVAS | 1:N |
| COMPUTADORES recebe RESERVAS | 1:N |
| CLIENTES realiza PAGAMENTOS | 1:N |
| FUNCIONARIOS gerencia COMPUTADORES | 1:N |
| CLIENTES utiliza SERVICOS | N:N |

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
CREATE DATABASE lanhouse_db;
```

Depois foi selecionado:

```sql
USE lanhouse_db;
```

---

## 2. Criação das Tabelas

Foram criadas as tabelas:
- usuarios
- clientes
- computadores
- reservas
- funcionarios
- pagamentos
- servicos

Cada tabela possui:
- chave primária (`PRIMARY KEY`)
- auto incremento (`AUTO_INCREMENT`)
- tipos de dados apropriados

---

## 3. Definição das Chaves Estrangeiras

As tabelas foram conectadas utilizando `FOREIGN KEY`.

### Exemplo:

```sql
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
```

Isso garante integridade entre os dados.

---

# Relacionamentos Implementados

| Tabela | Chave Estrangeira | Referência |
|---|---|---|
| reservas | id_cliente | clientes |
| reservas | id_computador | computadores |
| pagamentos | id_cliente | clientes |

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
<img width="1306" height="523" alt="image" src="https://github.com/user-attachments/assets/4b417013-7e55-4cbf-97a9-cb8aeb4d8d17" />
