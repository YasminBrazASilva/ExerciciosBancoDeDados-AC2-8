DELIMITER $
	-- Cria a procedure novoAluno, para que seja adicionado um novo aluno à tabela alunos
	CREATE PROCEDURE novoAluno(aln_nome VARCHAR(400))
		BEGIN
			-- Define os campos primeiroNome e ultimoSobrenome a partir do campo aln_nome passado como parâmetro da função
			SET @primeiroNome = LOWER(SUBSTRING_INDEX(aln_nome, ' ', 1));
            SET @ultimoSobrenome = LOWER(REVERSE(SUBSTRING_INDEX(REVERSE(aln_nome), ' ', 1)));
                      
            SELECT COUNT(*) 
              INTO @emailCount 
              FROM alunos
			 WHERE @primeiroNome = aln_primeiro_nome 
               AND @ultimoSobrenome = aln_ultimo_sobrenome;
			
            SET @aln_email = 
				CASE
					WHEN @emailCount > 0 
                    THEN CONCAT(@primeiroNome, '.', @ultimoSobrenome, @emailCount, '@facens.com')
					ELSE CONCAT(@primeiroNome, '.', @ultimoSobrenome, '@facens.com')
				END;

			INSERT INTO alunos
				VALUES (NULL, aln_nome, @aln_email, @primeiroNome , @ultimoSobrenome);
		END $
DELIMITER ;