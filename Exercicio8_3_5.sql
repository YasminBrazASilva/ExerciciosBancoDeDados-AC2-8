DELIMITER $
	-- Cria a procedure novoCursoParaOProfessor, para que seja registrado na tabela professores_cursos uma nova relação de professor-curso
	CREATE PROCEDURE novoCursoParaOProfessor(cur_id INT, pro_id INT)
		BEGIN
			-- Insere os valores definidos na tabela alunos_cursos
			INSERT INTO alunos_cursos
				VALUES (cur_id, pro_id);
		END $
DELIMITER ;