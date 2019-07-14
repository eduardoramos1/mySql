SELECT * FROM estados;

SELECT nome, sigla FROM estados;
SELECT nome FROM estados WHERE regiao = 'sul';
SELECT sigla FROM estados WHERE populacao > 10 ORDER BY populacao;
SELECT sigla FROM estados WHERE populacao > 10 ORDER BY populacao DESC;
SELECT * FROM estados WHERE id = 2;


UPDATE estados SET populacao = 39.33 WHERE nome = 'São Paulo';