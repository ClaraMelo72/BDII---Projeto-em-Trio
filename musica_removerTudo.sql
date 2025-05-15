-- 1. Remover todas as views primeiro
DROP VIEW IF EXISTS `vw_funcoes_mais_comuns`;
DROP VIEW IF EXISTS `vw_instrumentos_mais_usados`;
DROP VIEW IF EXISTS `vw_interpretacoes_detalhes`;
DROP VIEW IF EXISTS `vw_multinstrumentistas`;
DROP VIEW IF EXISTS `vw_musico_instrumentos_aptos`;
DROP VIEW IF EXISTS `vw_musicos_por_orquestra`;
DROP VIEW IF EXISTS `vw_musicos_sem_interpretacao`;
DROP VIEW IF EXISTS `vw_participacao_sinfonias`;
DROP VIEW IF EXISTS `vw_qtd_musicos_orquestra`;
DROP VIEW IF EXISTS `vw_sinfonias_orquestras`;

-- 2. Remover tabelas
DROP TABLE IF EXISTS Interpretar;
DROP TABLE IF EXISTS Tocar;
DROP TABLE IF EXISTS Apresentar;
DROP TABLE IF EXISTS Telefone;
DROP TABLE IF EXISTS Endereco;
DROP TABLE IF EXISTS Musico;
DROP TABLE IF EXISTS Funcao;
DROP TABLE IF EXISTS Instrumento;
DROP TABLE IF EXISTS Sinfonia;
DROP TABLE IF EXISTS Orquestra;

-- 3. Remove schema

DROP SCHEMA escola_musica;