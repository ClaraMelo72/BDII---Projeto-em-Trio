-- 1. Orquestras do gênero “Clássico” com o total de músicos
SELECT o.nome AS Orquestra, o.genero_musical, COUNT(m.CPF) AS total_musicos
FROM orquestra o
LEFT JOIN musico m ON m.Orquestra_idOrquestra = o.idOrquestra
WHERE o.genero_musical = 'Clássico'
GROUP BY o.nome, o.genero_musical;

-- 2. Orquestras com número igual ou maior que 5 músicos
SELECT q.ORQUESTRA, q.TOTAL_MUSICOS, o.cidade, o.pais
FROM vw_qtd_musicos_orquestra q
JOIN orquestra o ON q.ORQUESTRA = o.nome
WHERE q.TOTAL_MUSICOS >= 5;

-- 3. Músicos que tocam instrumentos em sinfonias com duração maior que 30 minutos
SELECT DISTINCT m.nome AS Musico, s.nome AS Sinfonia, s.duracao
FROM musico m
JOIN interpretar i ON m.CPF = i.Musico_CPF
JOIN sinfonia s ON i.Sinfonia_idSinfonia = s.idSinfonia
WHERE s.duracao > '00:30:00';

-- 4. Músicos que participam de sinfonias com duração menor que a média de todas as sinfonias
SELECT DISTINCT m.nome, s.nome AS Sinfonia, s.duracao
FROM musico m
JOIN interpretar i ON m.CPF = i.Musico_CPF
JOIN sinfonia s ON i.Sinfonia_idSinfonia = s.idSinfonia
WHERE s.duracao < (SELECT AVG(TIME_TO_SEC(duracao)) FROM sinfonia);

-- 5. Lista de orquestras com sinfonias de duração maior que 60 minutos e seu gênero musical
SELECT DISTINCT o.nome AS Orquestra, o.genero_musical, s.nome AS Sinfonia, s.duracao
FROM orquestra o
JOIN musico m ON m.Orquestra_idOrquestra = o.idOrquestra
JOIN interpretar i ON i.Musico_CPF = m.CPF
JOIN sinfonia s ON i.Sinfonia_idSinfonia = s.idSinfonia
WHERE s.duracao > '00:50:00';

-- 6. Instrumentos tocados em sinfonias de orquestras do gênero “Clássico”
SELECT DISTINCT inst.nome AS Instrumento, s.nome AS Sinfonia, o.nome AS Orquestra
FROM interpretar i
JOIN instrumento inst ON i.Instrumento_idInstrumento = inst.idInstrumento
JOIN sinfonia s ON i.Sinfonia_idSinfonia = s.idSinfonia
JOIN musico m ON i.Musico_CPF = m.CPF
JOIN orquestra o ON m.Orquestra_idOrquestra = o.idOrquestra
WHERE o.genero_musical = 'Clássico';

-- 7. Músicos que participam em sinfonias de orquestras “Clássicas” e tocam um ou mais de um instrumento
SELECT m.nome, COUNT(DISTINCT t.Instrumento_idInstrumento) AS qtd_instrumentos
FROM musico m
JOIN tocar t ON m.CPF = t.Musico_CPF
JOIN orquestra o ON m.Orquestra_idOrquestra = o.idOrquestra
WHERE o.genero_musical = 'Clássico'
GROUP BY m.nome
HAVING COUNT(DISTINCT t.Instrumento_idInstrumento) >= 1;

-- 8. Músicos que participaram de sinfonias do gênero barroco (via orquestra)
SELECT DISTINCT m.nome AS Musico, o.genero_musical
FROM musico m
JOIN orquestra o ON m.Orquestra_idOrquestra = o.idOrquestra
JOIN interpretar i ON m.CPF = i.Musico_CPF
WHERE o.genero_musical = 'Barroco';

-- 9. Listar mulheres que nasceram após 1990
SELECT m.CPF, m.nome, m.data_nasc, m.genero, o.nome AS Orquestra
FROM musico m
JOIN orquestra o ON m.Orquestra_idOrquestra = o.idOrquestra
WHERE m.genero = 'F'
  AND m.data_nasc > '1990-01-01';
  
-- 10. Listar os músicos homens argentinos do mais velho para o mais novo.
SELECT m.CPF, m.nome, m.data_nasc, m.genero, m.nacionalidade, o.nome AS Orquestra
FROM musico m
JOIN orquestra o ON m.Orquestra_idOrquestra = o.idOrquestra
WHERE m.genero = 'M'
  AND m.nacionalidade = 'Argentina'
ORDER BY m.data_nasc ASC;






