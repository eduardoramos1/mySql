INSERT INTO estados(nome, sigla, populacao, regiao)
VALUES('São Paulo', 'SP', 40.00, 'SUDESTE');

INSERT INTO estados(nome, sigla, populacao, regiao)
VALUES('Paraná', 'PR', 22.33, 'SUL');

INSERT INTO estados(nome, sigla, populacao, regiao)
VALUES
	('Amapá','AP', 2.00 , 'NORTE'),
    ('Piauí','PI', 15.33, 'NORDESTE'),
	('Pará','pa', 12.33, 'NORTE');
    
    
SELECT * FROM estados;

INSERT INTO cidade(nome, area, estado_id)
	VALUES('Campinas', 795, 1 );
    
    
INSERT INTO cidade(nome, area, estado_id)
	VALUES ('Vallhala', 10000, 155),
		   ('Alfheim', 8000, (SELECT id FROM estados WHERE sigla = 'CN'));	
		
    
    
    SELECT * FROM estados;
    SELECT * FROM cidade;



INSERT INTO estados(id, nome, sigla, populacao, regiao)
	VALUES(155, 'Cabrobró do Norte', 'CN', 50, 'Nordeste');
    
INSERT INTO estados(nome, sigla, populacao, regiao)
	VALUES('Cabrobró do Sul', 'CS', 40, 'Sul');
    
INSERT INTO cidade(nome, area, estado_id)
	VALUES
    ('Svartalfheim', 22, 1),
	('Nilfheim', 55, 2),
	('Muspelheim', 22, 4),
    ('Midgard', 100, 5),
    ('Jotunheim', 250, 2);
    
    

    
INSERT INTO prefeitos (nome, cidade_id)
	VALUES
		('Batman', 1);
        
INSERT INTO prefeitos(nome, cidade_id)
	VALUES
		('Thor', 2),
        ('Freya', 4),
        ('Elf', 3),
        ('Surtr', 6),
        ('Ivald', 5);

SELECT * FROM prefeitos p, cidade c WHERE p.cidade_id = c.id; 