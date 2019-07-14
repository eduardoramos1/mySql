CREATE DATABASE treino;
USE treino;

CREATE TABLE pessoa(
	pai VARCHAR(255) NOT NULL UNIQUE,
    mae VARCHAR(255) NOT NULL UNIQUE,
	irmao VARCHAR(255),
    irma  VARCHAR(255),
    RG INT PRIMARY KEY
);

ALTER TABLE pessoa DROP column pai;
ALTER TABLE pessoa DROP column mae;
ALTER TABLE pessoa ADD nome VARCHAR(255) FIRST;
ALTER TABLE PESSOA ADD pai  VARCHAR(255) AFTER nome;
ALTER TABLE PESSOA ADD MAE VARCHAR(255) AFTER  PAI;
SELECT * FROM pessoa;

INSERT INTO PESSOA(NOME, PAI, MAE, IRMAO, IRMA, RG)
	VALUES
    ('Eduardo', 'José Luis', 'Salete', 'Lucas', 'Laura', 491884692),
    ('Lucas', 'José Luis', 'Salete', 'Eduardo', 'Laura', 21212121),
    ('Laura', 'José Luis', 'Salete', 'Eduardo', NULL , 212121);
    
SELECT NOME AS IRMAOS FROM PESSOA WHERE pai = 'José Luis';

UPDATE pessoa SET nome = 'Eduardo Ramos' WHERE rg = '491884692';
INSERT INTO PESSOA(NOME, RG)
	VALUES('Intruso', 3232323);
DELETE FROM pessoa WHERE RG = 3232323