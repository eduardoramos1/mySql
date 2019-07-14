SELECT * FROM estados e, cidade c WHERE e.id = c.estado_id;

SELECT * FROM cidade c INNER JOIN prefeitos p ON c.id = p.cidade_id;

SELECT * FROM cidade c LEFT JOIN prefeitos p ON c.id = p.cidade_id;

SELECT * FROM cidade c RIGHT JOIN prefeitos p ON c.id = p.cidade_id;