SET language brazilian;
GO
USE master;
GO
DROP DATABASE IF EXISTS ANHEMBI_BD;
GO
CREATE DATABASE ANHEMBI_BD;
GO
USE ANHEMBI_BD;
GO
CREATE TABLE CLIENTE
(
  idCLIENTE  INTEGER     NOT NULL PRIMARY KEY,
  nmCLIENTE  VARCHAR(50) NOT NULL,
  telCLIENTE INTEGER     NULL,
  dtNasc     DATE        NULL,
);
GO
CREATE TABLE FILME
(
  idFILME     INTEGER     NOT NULL PRIMARY KEY,
  tituloFilme VARCHAR(50) NOT NULL,
  duracao     TIME        NULL,
)
CREATE TABLE FITA
(
  idFITA        INTEGER       NOT NULL PRIMARY KEY,
  idFILME       INTEGER       NOT NULL,
  vlLocacaoFita DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (idFILME) REFERENCES FILME(idFILME)
)
CREATE TABLE LOCACAO
(
  idLOCACAO   INTEGER  NOT NULL PRIMARY KEY,
  idFITA      INTEGER  NOT NULL,
  idCLIENTE   INTEGER  NOT NULL,
  dtLocacao   DATETIME NOT NULL,
  dtDevolucao DATETIME NULL,
  FOREIGN KEY (idFITA) REFERENCES FITA(idFITA),
  FOREIGN KEY (idCLIENTE) REFERENCES CLIENTE(idCLIENTE)
)
