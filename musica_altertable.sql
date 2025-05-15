-- 1. Adiciona um campo para status de atividade do músico
ALTER TABLE Musico
ADD COLUMN ativo BOOLEAN DEFAULT TRUE;

-- 2. Altera o tamanho do campo 'nome' da sinfonia para permitir títulos maiores
ALTER TABLE Sinfonia
MODIFY COLUMN nome VARCHAR(100);

-- 3.1 Adiciona uma coluna para registrar o tempo de duração da sinfonia (em minutos)
ALTER TABLE Sinfonia
ADD COLUMN duracao TIME;

-- 3.2 OU DELETAR SE NÃO FIZER SENTIDO
-- ALTER TABLE Sinfonia DROP COLUMN duracao_minutos;

-- 4. Adiciona restrição para duração mínima da sinfonia (>= 1 minuto)
ALTER TABLE Sinfonia
ADD CONSTRAINT chk_duracao CHECK (duracao >= 1);

-- 5. Adiciona uma coluna para armazenar o gênero musical da orquestra
ALTER TABLE Orquestra
ADD COLUMN genero_musical VARCHAR(50);

-- 6. Renomeia a coluna 'numero' da tabela Endereco para 'numero_residencia'
ALTER TABLE Endereco
CHANGE COLUMN numero numero_residencia VARCHAR(5);

-- 7. Adiciona restrição para garantir que CEP tenha 8 caracteres
ALTER TABLE Endereco
ADD CONSTRAINT chk_cep_length CHECK (CHAR_LENGTH(CEP) = 8);

-- 8. Altera o campo 'formacao' do músico para permitir até 80 caracteres
ALTER TABLE Musico
MODIFY COLUMN formacao VARCHAR(80);

-- 9. Adiciona uma coluna para data/hora de cadastro do instrumento
ALTER TABLE Instrumento
ADD COLUMN data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP;

-- 10. Adiciona uma coluna para data de nascimento do músico
ALTER TABLE musico
ADD COLUMN data_nascimento DATE;
