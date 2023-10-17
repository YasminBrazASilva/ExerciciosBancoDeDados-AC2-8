DELIMITER $
	-- Cria a procedure novoProfessor, para que seja adicionado um novo professor à tabela professores
	CREATE PROCEDURE novoProfessor(pro_nome VARCHAR(400), pro_salario DECIMAL(7,2))
		BEGIN
			-- Insere os valores na tabela professores (o id é NULL pois este campo é autoincremental)
			INSERT INTO professores
				VALUES (NULL, pro_nome, pro_salario);
		END $
DELIMITER ;