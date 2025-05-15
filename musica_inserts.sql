-- INJEÇÃO DOS DADOS

-- 1. ORQUESTRA
INSERT INTO Orquestra (idOrquestra, nome, cidade, pais, data_criacao) VALUES
(1, 'Orquestra Jovem Experimental', 'São Paulo', 'Brasil', '2020-01-15'),
(2, 'Orquestra de Câmara da Escola Harmonia', 'Recife', 'Brasil', '2020-03-10'),
(3, 'Orquestra Sinfônica Pedagógica', 'Belo Horizonte', 'Brasil', '2020-06-22'),
(4, 'Orquestra de Alunos Avançados', 'Porto Alegre', 'Brasil', '2020-08-01'),
(5, 'Orquestra Jovem do Sertão', 'Petrolina', 'Brasil', '2020-11-03'),
(6, 'Orquestra de Sopros', 'Curitiba', 'Brasil', '2021-01-10'),
(7, 'Orquestra de Iniciantes', 'Fortaleza', 'Brasil', '2021-02-14'),
(8, 'Orquestra Sinfônica Estudantil', 'Rio de Janeiro', 'Brasil', '2021-04-20'),
(9, 'Orquestra de Câmara Moderna', 'João Pessoa', 'Brasil', '2021-06-05'),
(10, 'Orquestra Sinfônica Popular', 'Salvador', 'Brasil', '2021-08-13'),
(11, 'Orquestra Experimental de Maceió', 'Maceió', 'Brasil', '2022-01-07'),
(12, 'Orquestra Regional Universitária', 'Campinas', 'Brasil', '2022-03-18'),
(13, 'Orquestra de Cordas do Interior', 'Marília', 'Brasil', '2022-05-25'),
(14, 'Orquestra Jovem do Agreste', 'Caruaru', 'Brasil', '2022-08-30'),
(15, 'Orquestra Laboratório da Escola Técnica', 'Florianópolis', 'Brasil', '2022-10-11'),
(16, 'Orquestra Estudantil do Norte', 'Manaus', 'Brasil', '2023-01-04'),
(17, 'Orquestra de Talentos Emergentes', 'Belém', 'Brasil', '2023-02-20'),
(18, 'Orquestra Sinfônica Litoral', 'Natal', 'Brasil', '2023-04-09'),
(19, 'Orquestra Jovem da Escola Dom Pedro', 'Vitória', 'Brasil', '2023-06-15'),
(20, 'Orquestra Técnica Experimental', 'Goiânia', 'Brasil', '2024-01-12');

-- 2. INSTRUMENTO
INSERT INTO Instrumento (idInstrumento, nome, tipo) VALUES
(1, 'Violino', 'Cordas'),
(2, 'Viola', 'Cordas'),
(3, 'Violoncelo', 'Cordas'),
(4, 'Contrabaixo', 'Cordas'),
(5, 'Harpa', 'Cordas'),
(6, 'Flauta Transversal', 'Madeiras'),
(7, 'Clarinete', 'Madeiras'),
(8, 'Oboé', 'Madeiras'),
(9, 'Fagote', 'Madeiras'),
(10, 'Saxofone Alto', 'Madeiras'),
(11, 'Trompete', 'Metais'),
(12, 'Trombone', 'Metais'),
(13, 'Tuba', 'Metais'),
(14, 'Trompa', 'Metais'),
(15, 'Tímpano', 'Percussão'),
(16, 'Caixa Clara', 'Percussão'),
(17, 'Pratos', 'Percussão'),
(18, 'Piano', 'Teclas'),
(19, 'Cravo', 'Teclas'),
(20, 'Celesta', 'Teclas');

-- 3. FUNÇÃO
INSERT INTO Funcao (idFuncao, nome, data_inicio) VALUES
(1, 'Maestro', '2020-02-01'),
(2, 'Regente Assistente', '2020-03-15'),
(3, 'Violinista', '2020-07-20'),
(4, 'Violinista Principal', '2020-09-05'),
(5, 'Violoncelista', '2020-12-10'),
(6, 'Contrabaixista', '2021-02-20'),
(7, 'Flautista', '2021-03-25'),
(8, 'Clarinetista', '2021-06-01'),
(9, 'Oboísta', '2021-09-14'),
(10, 'Fagotista', '2021-11-30'),
(11, 'Trompetista', '2022-01-15'),
(12, 'Trombonista', '2022-04-10'),
(13, 'Tubista', '2022-06-20'),
(14, 'Percussionista', '2022-09-03'),
(15, 'Timpanista', '2022-11-27'),
(16, 'Pianista', '2023-02-14'),
(17, 'Cravista', '2023-04-08'),
(18, 'Harpeira', '2023-07-19'),
(19, 'Saxofonista', '2023-10-25'),
(20, 'Spalla', '2024-01-30');

-- 4. MÚSICO
INSERT INTO Musico (CPF, nome, data_nasc, genero, nacionalidade, formacao, email, Orquestra_idOrquestra) VALUES
('10100100100', 'João da Silva', '1990-05-15', 'M', 'Brasileira', 'Bacharelado em Música', 'joao.silva@escolamusica.com', 1),
('10200200200', 'Maria Oliveira', '1992-08-23', 'F', 'Brasileira', 'Licenciatura em Flauta', 'maria.oliveira@escolamusica.com', 2),
('10300300300', 'Pedro Costa', '1988-11-09', 'M', 'Brasileira', 'Técnico em Violino', 'pedro.costa@escolamusica.com', 3),
('10400400400', 'Ana Paula Rocha', '1995-01-02', 'F', 'Brasileira', 'Superior em Piano', 'ana.rocha@escolamusica.com', 4),
('10500500500', 'Lucas Martins', '1991-03-28', 'M', 'Brasileira', 'Conservatório Estadual', 'lucas.martins@escolamusica.com', 5),
('10600600600', 'Juliana Mendes', '1993-06-14', 'F', 'Brasileira', 'Licenciatura em Música', 'juliana.mendes@escolamusica.com', 6),
('10700700700', 'Carlos Eduardo', '1987-12-19', 'M', 'Brasileira', 'Curso Técnico em Trombone', 'carlos.eduardo@escolamusica.com', 7),
('10800800800', 'Fernanda Teixeira', '1996-09-10', 'F', 'Brasileira', 'Superior em Clarinete', 'fernanda.teixeira@escolamusica.com', 8),
('10900900900', 'André Luiz Ribeiro', '1989-04-05', 'M', 'Brasileira', 'Especialização em Regência', 'andre.ribeiro@escolamusica.com', 9),
('11001001000', 'Camila Souza', '1994-07-22', 'F', 'Brasileira', 'Curso Técnico em Percussão', 'camila.souza@escolamusica.com', 10),
('11101101100', 'Eduardo Ramos', '1985-11-30', 'M', 'Brasileira', 'Superior em Composição', 'edu.ramos@escolamusica.com', 11),
('11201201200', 'Bianca Almeida', '1997-10-17', 'F', 'Brasileira', 'Curso Técnico em Viola', 'bianca.almeida@escolamusica.com', 12),
('11301301300', 'Felipe Carvalho', '1990-02-01', 'M', 'Brasileira', 'Licenciatura em Trompete', 'felipe.carvalho@escolamusica.com', 13),
('11401401400', 'Renata Lima', '1993-06-30', 'F', 'Brasileira', 'Conservatório Municipal', 'renata.lima@escolamusica.com', 14),
('11501501500', 'Gustavo Martins', '1991-01-25', 'M', 'Brasileira', 'Curso Técnico em Fagote', 'gustavo.martins@escolamusica.com', 15),
('11601601600', 'Natália Duarte', '1995-09-05', 'F', 'Brasileira', 'Licenciatura em Harpa', 'natalia.duarte@escolamusica.com', 16),
('11701701700', 'Thiago Lopes', '1986-12-12', 'M', 'Brasileira', 'Curso Técnico em Tuba', 'thiago.lopes@escolamusica.com', 17),
('11801801800', 'Larissa Rocha', '1998-03-08', 'F', 'Brasileira', 'Superior em Oboé', 'larissa.rocha@escolamusica.com', 18),
('11901901900', 'Marcos Tavares', '1990-07-14', 'M', 'Brasileira', 'Especialização em Saxofone', 'marcos.tavares@escolamusica.com', 19),
('12002002000', 'Helena Cardoso', '1992-11-11', 'F', 'Brasileira', 'Licenciatura em Música', 'helena.cardoso@escolamusica.com', 20);

INSERT INTO musico (CPF, nome, data_nasc, genero, nacionalidade, formacao, email, Orquestra_idOrquestra) VALUES
('40100100100', 'Juan Silva', '1990-05-15', 'M', 'Argentina', 'Bacharelado em Música', 'joao.silva@escolamusica.com', 1),
('50200200200', 'Maria Cardozo', '1995-07-20', 'F', 'Argentina', 'Licenciatura em Música', 'maria.oliveira@escolamusica.com', 2),
('60300300300', 'Pedrito Santos', '1985-12-10', 'M', 'Argentina', 'Curso Técnico em Música', 'pedro.santos@escolamusica.com', 5),
('70400400400', 'Ana Castello', '1992-11-25', 'F', 'Argentina', 'Bacharelado em Música', 'ana.costa@escolamusica.com', 9),
('80500500500', 'Lucas Lopez', '1988-03-05', 'M', 'Argentina', 'Bacharelado em Música', 'lucas.pereira@escolamusica.com', 3);


-- 5. SINFONIA
INSERT INTO Sinfonia (idSinfonia, nome, compositor, data_composicao) VALUES
(1, 'Sinfonia nº 5 em Dó Menor', 'Ludwig van Beethoven', '1808-12-22'),
(2, 'Sinfonia nº 40 em Sol Menor', 'Wolfgang Amadeus Mozart', '1788-07-25'),
(3, 'Sinfonia do Novo Mundo', 'Antonín Dvořák', '1893-12-15'),
(4, 'Sinfonia nº 9 “Coral”', 'Ludwig van Beethoven', '1824-05-07'),
(5, 'Sinfonia Inacabada', 'Franz Schubert', '1822-10-30'),
(6, 'Sinfonia Pastoral', 'Ludwig van Beethoven', '1808-12-22'),
(7, 'Sinfonia nº 6 “Patética”', 'Piotr Ilitch Tchaikovsky', '1893-10-28'),
(8, 'Sinfonia nº 3 “Heroica”', 'Ludwig van Beethoven', '1804-04-07'),
(9, 'Sinfonia Alpina', 'Richard Strauss', '1915-10-28'),
(10, 'Sinfonia nº 1 em Ré Maior', 'Gustav Mahler', '1889-11-20'),
(11, 'Sinfonia nº 4 em Lá Maior', 'Gustav Mahler', '1901-11-25'),
(12, 'Sinfonia em Dó Maior', 'Georges Bizet', '1855-03-15'),
(13, 'Sinfonia nº 7 em Lá Maior', 'Beethoven', '1813-12-08'),
(14, 'Sinfonia de Réquiem', 'Benjamin Britten', '1941-03-29'),
(15, 'Sinfonia Fantástica', 'Hector Berlioz', '1830-12-05'),
(16, 'Sinfonia nº 2 “Ressurreição”', 'Gustav Mahler', '1895-12-13'),
(17, 'Sinfonia nº 104 “Londres”', 'Joseph Haydn', '1795-05-04'),
(18, 'Sinfonia nº 9 “Do Novo Mundo”', 'Dvořák', '1893-12-16'),
(19, 'Sinfonia nº 8 “Inglesa”', 'Vaughan Williams', '1956-03-02'),
(20, 'Sinfonia nº 1 “Titã”', 'Gustav Mahler', '1889-11-20');

-- 6. APRESENTAR
INSERT INTO Apresentar (orquestra_idOrquestra, sinfonia_idSinfonia, data_execucao, local) VALUES
(1, 1, '2021-03-15', 'Auditório Principal'),
(2, 2, '2021-05-10', 'Sala de Concertos Harmonia'),
(3, 3, '2021-06-25', 'Teatro Escola Sul'),
(4, 4, '2021-08-12', 'Auditório Central da Escola'),
(5, 5, '2021-10-20', 'Centro de Artes Integradas'),
(6, 6, '2022-02-05', 'Sala Villa-Lobos'),
(7, 7, '2022-04-18', 'Teatro da Escola de Música'),
(8, 8, '2022-06-09', 'Sala de Concerto Nordeste'),
(9, 9, '2022-07-22', 'Auditório Nobre'),
(10, 10, '2022-09-11', 'Teatro Experimental Leste'),
(11, 11, '2022-11-30', 'Sala Pedro Álvares Cabral'),
(12, 12, '2023-01-20', 'Palco Acadêmico Harmonia'),
(13, 13, '2023-03-04', 'Sala de Música Contemporânea'),
(14, 14, '2023-05-16', 'Teatro de Câmara Jovem'),
(15, 15, '2023-06-25', 'Centro Educacional de Música'),
(16, 16, '2023-08-10', 'Auditório Escola Norte'),
(17, 17, '2023-09-22', 'Sala Litoral Musical'),
(18, 18, '2023-11-14', 'Sala Experimental de Ensaios'),
(19, 19, '2024-01-07', 'Teatro da Escola Dom Pedro'),
(20, 20, '2024-02-29', 'Sala Técnica Escola de Goiânia');


-- 7. TOCAR
INSERT INTO Tocar (Musico_CPF, Instrumento_idInstrumento) VALUES
('10100100100', 1),  -- João da Silva → Violino
('10200200200', 6),  -- Maria Oliveira → Flauta Transversal
('10300300300', 1),  -- Pedro Costa → Violino
('10400400400', 18), -- Ana Paula Rocha → Piano
('10500500500', 11), -- Lucas Martins → Trompete
('10600600600', 6),  -- Juliana Mendes → Flauta Transversal
('10700700700', 12), -- Carlos Eduardo → Trombone
('10800800800', 7),  -- Fernanda Teixeira → Clarinete
('10900900900', 11), -- André Ribeiro → Trompete
('11001001000', 15), -- Camila Souza → Tímpano
('11101101100', 5),  -- Eduardo Ramos → Harpa
('11201201200', 2),  -- Bianca Almeida → Viola
('11301301300', 11), -- Felipe Carvalho → Trompete
('11401401400', 8),  -- Renata Lima → Oboé
('11501501500', 9),  -- Gustavo Martins → Fagote
('11601601600', 5),  -- Natália Duarte → Harpa
('11701701700', 13), -- Thiago Lopes → Tuba
('11801801800', 8),  -- Larissa Rocha → Oboé
('11901901900', 10), -- Marcos Tavares → Saxofone Alto
('12002002000', 18); -- Helena Cardoso → Piano

-- 8. INTERPRETAR
INSERT INTO Interpretar (Musico_CPF, Sinfonia_idSinfonia, Funcao_idFuncao, Instrumento_idInstrumento) VALUES
('10100100100', 1, 3, 1),
('10200200200', 2, 7, 6),
('10300300300', 3, 3, 1),
('10400400400', 4, 16, 18),
('10500500500', 5, 11, 11),
('10600600600', 6, 7, 6),
('10700700700', 7, 12, 12),
('10800800800', 8, 8, 7),
('10900900900', 9, 1, 11),
('11001001000', 10, 15, 15),
('11101101100', 11, 18, 5),
('11201201200', 12, 2, 2),
('11301301300', 13, 11, 11),
('11401401400', 14, 9, 8),
('11501501500', 15, 10, 9),
('11601601600', 16, 18, 5),
('11701701700', 17, 13, 13),
('11801801800', 18, 9, 8),
('11901901900', 19, 19, 10),
('12002002000', 20, 16, 18);

-- 9. ENDEREÇO
INSERT INTO Endereco (Musico_CPF, UF, cidade, bairro, logradouro, numero, complemento, CEP) VALUES
('10100100100', 'SP', 'São Paulo', 'Centro', 'Rua Harmonia', '101', 'Apto 12', '01001000'),
('10200200200', 'PE', 'Recife', 'Boa Vista', 'Av. Concerto', '202', 'Bloco B', '52011020'),
('10300300300', 'MG', 'Belo Horizonte', 'Savassi', 'Rua Beethoven', '33', NULL, '30130100'),
('10400400400', 'RS', 'Porto Alegre', 'Menino Deus', 'Rua Mozart', '44', NULL, '90880000'),
('10500500500', 'PE', 'Petrolina', 'Jardim São Paulo', 'Av. Vivaldi', '55', 'Casa 2', '56308000'),
('10600600600', 'PR', 'Curitiba', 'Água Verde', 'Rua Strauss', '66', NULL, '80240000'),
('10700700700', 'CE', 'Fortaleza', 'Aldeota', 'Rua Chopin', '77', 'Apto 701', '60175080'),
('10800800800', 'RJ', 'Rio de Janeiro', 'Tijuca', 'Av. Orquestra', '88', NULL, '20510060'),
('10900900900', 'PB', 'João Pessoa', 'Cabo Branco', 'Rua Clássica', '99', 'Fundos', '58045000'),
('11001001000', 'BA', 'Salvador', 'Pituba', 'Rua do Ritmo', '123', NULL, '41810000'),
('11101101100', 'AL', 'Maceió', 'Mangabeiras', 'Av. Allegro', '321', 'Cobertura', '57037000'),
('11201201200', 'SP', 'Campinas', 'Barão Geraldo', 'Rua Notas Musicais', '111', NULL, '13084000'),
('11301301300', 'SP', 'Marília', 'Centro', 'Rua Escalas', '222', 'Bloco A', '17500000'),
('11401401400', 'PE', 'Caruaru', 'Maurício de Nassau', 'Rua Sol Maior', '333', NULL, '55012290'),
('11501501500', 'SC', 'Florianópolis', 'Trindade', 'Av. Acordes', '444', NULL, '88036000'),
('11601601600', 'AM', 'Manaus', 'Adrianópolis', 'Rua Repertório', '555', NULL, '69057002'),
('11701701700', 'PA', 'Belém', 'Umarizal', 'Rua Tom Musical', '666', 'Casa de esquina', '66055260'),
('11801801800', 'RN', 'Natal', 'Tirol', 'Av. Partitura', '777', NULL, '59020200'),
('11901901900', 'ES', 'Vitória', 'Praia do Canto', 'Rua Clave de Sol', '888', NULL, '29055260'),
('12002002000', 'GO', 'Goiânia', 'Setor Central', 'Rua Harmônicos', '999', 'Bloco C', '74000000');

-- 10. TELEFONE
INSERT INTO Telefone (idTelefone, numero, Musico_CPF) VALUES
(1, '(11) 98811-0001', '10100100100'),
(2, '(81) 99122-0002', '10200200200'),
(3, '(31) 99433-0003', '10300300300'),
(4, '(51) 99244-0004', '10400400400'),
(5, '(87) 99855-0005', '10500500500'),
(6, '(41) 99666-0006', '10600600600'),
(7, '(85) 99777-0007', '10700700700'),
(8, '(21) 99988-0008', '10800800800'),
(9, '(83) 99599-0009', '10900900900'),
(10, '(71) 99400-0010', '11001001000'),
(11, '(82) 99111-0011', '11101101100'),
(12, '(19) 99222-0012', '11201201200'),
(13, '(14) 99333-0013', '11301301300'),
(14, '(81) 99444-0014', '11401401400'),
(15, '(48) 99555-0015', '11501501500'),
(16, '(92) 99666-0016', '11601601600'),
(17, '(91) 99777-0017', '11701701700'),
(18, '(84) 99888-0018', '11801801800'),
(19, '(27) 99999-0019', '11901901900'),
(20, '(62) 99333-0020', '12002002000');






