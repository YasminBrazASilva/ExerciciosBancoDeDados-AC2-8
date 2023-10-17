DELIMITER $
	CREATE PROCEDURE novoProfessor(pro_nome VARCHAR(400), pro_salario DECIMAL(7,2))
		BEGIN
			INSERT INTO professores
				VALUES (NULL, pro_nome, pro_salario);
		END $
DELIMITER ;