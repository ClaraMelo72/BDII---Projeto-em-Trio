
-- 1. LISTA DE MÚSICOS COM SUAS ORQUESTRAS

CREATE VIEW vw_musicos_por_orquestra AS
SELECT musico.nome AS MUSICO, orquestra.nome AS ORQUESTRA, orquestra.cidade AS CIDADE, orquestra.pais AS PAIS
FROM musico
JOIN orquestra ON musico.Orquestra_idOrquestra = orquestra.idOrquestra;

-- 2. MÚSICOS E OS INSTRUMENTOS QUE SÃO APTOS A TOCAR

CREATE VIEW vw_musico_instrumentos_aptos AS
SELECT musico.nome AS MUSICO, instrumento.nome AS INSTRUMENTO, instrumento.tipo AS TIPO
FROM tocar
JOIN musico ON tocar.Musico_CPF = musico.CPF
JOIN instrumento ON tocar.Instrumento_idInstrumento = instrumento.idInstrumento;

-- 3. PARTICIPAÇÕES DE MÚSICOS EM SINFONIAS COM FUNÇÃO E INSTRUMENTO

CREATE VIEW vw_interpretacoes_detalhes AS
SELECT musico.nome AS MUSICO, sinfonia.nome AS SINFONIA, funcao.nome AS FUNCAO, funcao.data_inicio AS DATA_INICIO,
instrumento.nome AS INSTRUMENTO
FROM interpretar
JOIN musico ON interpretar.Musico_CPF = musico.CPF
JOIN sinfonia ON interpretar.Sinfonia_idSinfonia = sinfonia.idSinfonia
JOIN funcao ON interpretar.Funcao_idFuncao = funcao.idFuncao
JOIN instrumento ON interpretar.Instrumento_idInstrumento = instrumento.idInstrumento;

-- 4. Total de músicos por orquestra

CREATE VIEW vw_qtd_musicos_orquestra AS
SELECT COUNT(musico.CPF) AS TOTAL_MUSICOS, orquestra.nome AS ORQUESTRA
FROM orquestra
LEFT JOIN musico ON musico.Orquestra_idOrquestra = orquestra.idOrquestra
GROUP BY orquestra.nome;

-- 5. Funções mais desempenhadas nas sinfonias

CREATE VIEW vw_funcoes_mais_comuns AS
SELECT funcao.nome AS FUNCAO,
COUNT(*) AS QUANTAS_VEZES_EXERCIDA
FROM interpretar
JOIN funcao ON interpretar.Funcao_idFuncao = funcao.idFuncao
GROUP BY funcao.nome
ORDER BY QUANTAS_VEZES_EXERCIDA DESC;

-- 6. Sinfonias já executadas e suas orquestras

CREATE VIEW vw_sinfonias_orquestras AS
SELECT DISTINCT sinfonia.nome AS SINFONIA, orquestra.nome AS ORQUESTRA, orquestra.cidade AS CIDADE, orquestra.pais AS PAIS
FROM interpretar
JOIN sinfonia ON interpretar.Sinfonia_idSinfonia = sinfonia.idSinfonia
JOIN musico ON interpretar.Musico_CPF = musico.CPF
JOIN orquestra ON musico.Orquestra_idOrquestra = orquestra.idOrquestra;

-- 7. Músicos que tocam mais de um instrumento

CREATE VIEW vw_multinstrumentistas AS
SELECT musico.nome AS MUSICO, COUNT(*) AS QUANTOS_INSTRUMENTOS
FROM tocar
JOIN musico ON tocar.Musico_CPF = musico.CPF
GROUP BY musico.nome
HAVING COUNT(*) > 1;

-- 8. Músicos sem nenhuma interpretação registrada

CREATE VIEW vw_musicos_sem_interpretacao AS
SELECT musico.nome AS MUSICO, orquestra.nome AS ORQUESTRA
FROM musico
LEFT JOIN interpretar ON musico.CPF = interpretar.Musico_CPF
JOIN orquestra ON musico.Orquestra_idOrquestra = orquestra.idOrquestra
WHERE interpretar.Musico_CPF IS NULL;

-- 9. Lista de todas as sinfonias e quantos músicos participaram

CREATE VIEW vw_participacao_sinfonias AS
SELECT sinfonia.nome AS SINFONIA, COUNT(DISTINCT interpretar.Musico_CPF) AS TOTAL_MUSICOS
FROM sinfonia
LEFT JOIN interpretar ON interpretar.Sinfonia_idSinfonia = sinfonia.idSinfonia
GROUP BY sinfonia.nome;


-- 10. Instrumentos mais utilizados em apresentações

CREATE VIEW vw_instrumentos_mais_usados AS
SELECT instrumento.nome AS INSTRUMENTO, COUNT(*) AS TOTAL_UTILIZACOES
FROM instrumento
JOIN interpretar ON interpretar.Instrumento_idInstrumento = instrumento.idInstrumento
GROUP BY instrumento.nome
ORDER BY TOTAL_UTILIZACOES DESC;