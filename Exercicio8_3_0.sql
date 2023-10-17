DELIMITER $
	CREATE PROCEDURE selecionarTudo(tabela VARCHAR(100))
		BEGIN
			SET @query = CONCAT('SELECT * FROM ', tabela);
			PREPARE stmt FROM @query;
			EXECUTE stmt;
			DEALLOCATE PREPARE stmt;
		END $
DELIMITER ;