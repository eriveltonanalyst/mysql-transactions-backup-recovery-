# Criando Transações, Executando Backup e Recovery de Banco de Dados

## 📌 Descrição do Projeto
Este projeto tem como objetivo demonstrar o uso de **transações**, **procedures com controle de erro**, além de **backup e recovery** em MySQL, utilizando boas práticas de consistência, atomicidade e segurança dos dados.

O desafio foi desenvolvido como parte da trilha de Banco de Dados da plataforma DIO.

---

## 🎯 Objetivos
- Executar transações manuais controlando COMMIT e ROLLBACK
- Criar transações dentro de procedures com tratamento de erro
- Utilizar SAVEPOINT para rollback parcial
- Realizar backup e recovery de banco de dados com mysqldump
- Versionar scripts e backup no GitHub

---

# 🔹 PARTE 1 — TRANSAÇÕES MANUAIS

## 🧠 Conceito
Por padrão, o MySQL trabalha com **autocommit habilitado**, o que confirma automaticamente cada instrução SQL. Para trabalhar com transações, o autocommit deve ser desabilitado.

Nesta etapa, foram realizadas inserções e atualizações controladas manualmente utilizando:
- START TRANSACTION
- COMMIT
- ROLLBACK

---

# 🔹 PARTE 2 — TRANSAÇÕES COM PROCEDURE

## 🧠 Conceito
Nesta etapa, foi criada uma **procedure com controle transacional**, incluindo:
- Tratamento de erro com HANDLER
- Uso de SAVEPOINT
- Rollback total em caso de falha

Esse modelo é muito utilizado em sistemas críticos como financeiro e e-commerce.

---

# 🔹 PARTE 3 — BACKUP E RECOVERY

## 🧠 Conceito
Foi realizado o backup completo do banco de dados **e-commerce**, incluindo:
- Estrutura
- Dados
- Procedures

O processo foi feito utilizando o utilitário **mysqldump**, e o arquivo gerado foi versionado no GitHub.

---

## 🛠️ Tecnologias Utilizadas
- MySQL
- Transações
- Stored Procedures
- Savepoint
- mysqldump
- Backup e Recovery
