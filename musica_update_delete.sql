-- 1 e 2 para atualizar a duracao da sinfonia
UPDATE sinfonia SET duracao = '00:12:35' WHERE idSinfonia = 1;
UPDATE sinfonia SET duracao = '00:40:42' WHERE idSinfonia = 2;
UPDATE sinfonia SET duracao = '00:35:08' WHERE idSinfonia = 3;
UPDATE sinfonia SET duracao = '00:53:27' WHERE idSinfonia = 4;
UPDATE sinfonia SET duracao = '00:11:59' WHERE idSinfonia = 5;
UPDATE sinfonia SET duracao = '00:14:50' WHERE idSinfonia = 6;
UPDATE sinfonia SET duracao = '00:09:38' WHERE idSinfonia = 7;
UPDATE sinfonia SET duracao = '00:46:20' WHERE idSinfonia = 8;
UPDATE sinfonia SET duracao = '00:12:12' WHERE idSinfonia = 9;
UPDATE sinfonia SET duracao = '00:33:05' WHERE idSinfonia = 10;
UPDATE sinfonia SET duracao = '00:27:40' WHERE idSinfonia = 11;
UPDATE sinfonia SET duracao = '00:50:30' WHERE idSinfonia = 12;
UPDATE sinfonia SET duracao = '00:15:45' WHERE idSinfonia = 13;
UPDATE sinfonia SET duracao = '00:11:22' WHERE idSinfonia = 14;
UPDATE sinfonia SET duracao = '00:34:01' WHERE idSinfonia = 15;
UPDATE sinfonia SET duracao = '00:13:50' WHERE idSinfonia = 16;
UPDATE sinfonia SET duracao = '00:22:00' WHERE idSinfonia = 17;
UPDATE sinfonia SET duracao = '00:46:10' WHERE idSinfonia = 18;
UPDATE sinfonia SET duracao = '00:39:55' WHERE idSinfonia = 19;
UPDATE sinfonia SET duracao = '01:18:25' WHERE idSinfonia = 20;

UPDATE orquestra SET genero_musical = 'Clássico' WHERE idOrquestra = 1;
UPDATE orquestra SET genero_musical = 'Romântico' WHERE idOrquestra = 2;
UPDATE orquestra SET genero_musical = 'Clássico' WHERE idOrquestra = 3;
UPDATE orquestra SET genero_musical = 'Moderno' WHERE idOrquestra = 4;
UPDATE orquestra SET genero_musical = 'Cinema' WHERE idOrquestra = 5;
UPDATE orquestra SET genero_musical = 'Romântico' WHERE idOrquestra = 6;
UPDATE orquestra SET genero_musical = 'Câmara' WHERE idOrquestra = 7;
UPDATE orquestra SET genero_musical = 'Barroco' WHERE idOrquestra = 8;
UPDATE orquestra SET genero_musical = 'Clássico' WHERE idOrquestra = 9;
UPDATE orquestra SET genero_musical = 'Moderno' WHERE idOrquestra = 10;
UPDATE orquestra SET genero_musical = 'Cinema' WHERE idOrquestra = 11;
UPDATE orquestra SET genero_musical = 'Contemporâneo' WHERE idOrquestra = 12;
UPDATE orquestra SET genero_musical = 'Romântico' WHERE idOrquestra = 13;
UPDATE orquestra SET genero_musical = 'Câmara' WHERE idOrquestra = 14;
UPDATE orquestra SET genero_musical = 'Clássico' WHERE idOrquestra = 15;
UPDATE orquestra SET genero_musical = 'Sacra' WHERE idOrquestra = 16;
UPDATE orquestra SET genero_musical = 'Cinema' WHERE idOrquestra = 17;
UPDATE orquestra SET genero_musical = 'Romântico' WHERE idOrquestra = 18;
UPDATE orquestra SET genero_musical = 'Barroco' WHERE idOrquestra = 19;
UPDATE orquestra SET genero_musical = 'Contemporâneo' WHERE idOrquestra = 20;


-- 3. Corrige um e-mail com erro de digitação
UPDATE Musico SET email = 'amanda.luz@escolamusica.com' WHERE CPF = '20400400400';

-- 4. Atualiza a formação acadêmica de um músico
UPDATE Musico SET formacao = 'Licenciatura em Regência' WHERE CPF = '10900900900';

-- 5. Marca um músico como inativo
UPDATE Musico SET ativo = FALSE WHERE CPF = '11001001000';

-- 6. Muda o bairro de um endereço
UPDATE Endereco SET bairro = 'Centro Histórico' WHERE Musico_CPF = '10100100100';

-- 7. Atualiza os músicos para desvinculá-los da orquestra 20
UPDATE Musico SET Orquestra_idOrquestra = 1 WHERE Orquestra_idOrquestra = 20;

-- 8. Atualiza a orquestra dos musicos
UPDATE Musico SET Orquestra_idOrquestra = 1 WHERE Orquestra_idOrquestra = 2;
UPDATE Musico SET Orquestra_idOrquestra = 1 WHERE Orquestra_idOrquestra = 5;
UPDATE Musico SET Orquestra_idOrquestra = 1 WHERE Orquestra_idOrquestra = 6;
UPDATE Musico SET Orquestra_idOrquestra = 1 WHERE Orquestra_idOrquestra = 7;
UPDATE Musico SET Orquestra_idOrquestra = 1 WHERE Orquestra_idOrquestra = 9;

-- 9. Atualiza o nome de uma orquestra para refletir nova identidade
UPDATE Orquestra SET nome = 'Orquestra Sinfônica Jovem Experimental' WHERE idOrquestra = 1;

-- 10. Atualiza o CEP de um endereço
UPDATE Endereco SET CEP = '01002000' WHERE Musico_CPF = '10200200200';

-- 11. Atualiza o nome de um instrumento
UPDATE Instrumento SET nome = 'Violino Elétrico' WHERE idInstrumento = 1;

-- 12. Corrige o tipo de um instrumento
UPDATE Instrumento SET tipo = 'Cordas Friccionadas' WHERE idInstrumento = 2;


-- 13. Remove um telefone duplicado (simulado)
DELETE FROM Telefone WHERE idTelefone = 20;

-- 14. Remove um músico que foi desligado (simulação)
DELETE FROM Musico WHERE CPF = '22302302300';

-- 15. Remove um endereço incorreto
DELETE FROM Endereco WHERE Musico_CPF = '11401401400';

-- 16. Remove um relacionamento de "tocar" incorreto
DELETE FROM Tocar WHERE Musico_CPF = '11001001000' AND Instrumento_idInstrumento = 15;

-- 17. Remove um vínculo errado de interpretação
DELETE FROM Interpretar WHERE Musico_CPF = '10300300300' AND Sinfonia_idSinfonia = 3;

-- 18. Remove uma orquestra desativada da base
DELETE FROM Orquestra WHERE idOrquestra = 20;

-- 19. Remove uma função que nunca foi atribuída
DELETE FROM Funcao WHERE idFuncao = 20;

-- 20. Remove uma sinfonia que foi substituída
DELETE FROM Sinfonia WHERE idSinfonia = 20;