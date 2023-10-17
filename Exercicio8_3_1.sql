DELIMITER $
	CREATE PROCEDURE novoAluno(aln_nome VARCHAR(400))
		BEGIN
			SET @primeiroNome = LOWER(SUBSTRING_INDEX(aln_nome, ' ', 1));
            SET @ultimoSobrenome = LOWER(REVERSE(SUBSTRING_INDEX(REVERSE(aln_nome), ' ', 1)));
			SET @aln_email = CONCAT(@primeiroNome , '.', @ultimoSobrenome, '@facens.com');
            
            SELECT COUNT(*) 
              INTO @emailCount 
              FROM alunos
			 WHERE @primeiroNome = aln_primeiro_nome 
               AND @ultimoSobrenome = aln_ultimo_sobrenome;
               
            IF @emailCount  > 0 
				THEN SET @aln_email = CONCAT(@primeiroNome , '.', @ultimoSobrenome, @emailCount, '@facens.com');
			END IF;

			INSERT INTO alunos
				VALUES (NULL, aln_nome, @aln_email, @primeiroNome , @ultimoSobrenome);
		END $
DELIMITER ;