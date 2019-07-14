-- Criando a Tabela Estado --
use wm;

CREATE TABLE estados(
	id INT UNSIGNED NOT NULL  AUTO_INCREMENT PRIMARY KEY, -- UNSIGNED faz com que o campo não aceita valores negativos e aumenta o limite de armazenamento do campo --
    nome VARCHAR(45) NOT NULL UNIQUE KEY,
    sigla  VARCHAR(2) NOT NULL  UNIQUE KEY,
    regiao ENUM('Norte','Sul','Sudeste','Nordeste','Centro-Oeste'),
    populacao DECIMAL(5,2) NOT NULL -- 5 DIGITOS E 2 PONTOS FLUTUANTES
);


CREATE TABLE cidade(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR (255),
	estado_id INT UNSIGNED NOT NULL,
    area DECIMAL(10,2),
    PRIMARY KEY(id),
    FOREIGN KEY(estado_id) REFERENCES estados(id)
);

CREATE TABLE prefeitos(
	id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cidade_id int UNSIGNED UNIQUE KEY,
	FOREIGN KEY(cidade_id) REFERENCES cidade(id)
);


SELECT * FROM prefeitos;























CREATE TABLE estados(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    sigla VARCHAR(2) NOT NULL,
    regiao ENUM('Norte','Sul','Sudeste','Nordeste','Centro-Oeste') NOT NULL,
    populacao DECIMAL(5,2) NOT NULL,  -- 5 digitos e 2 pontos flutuantes --
	PRIMARY KEY (id),
    UNIQUE KEY (nome),
    UNIQUE KEY (sigla)
);
