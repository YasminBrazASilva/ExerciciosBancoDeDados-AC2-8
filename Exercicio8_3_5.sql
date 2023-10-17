DELIMITER $
	CREATE PROCEDURE novoCursoParaOProfessor(cur_id INT, pro_id INT)
		BEGIN
			INSERT INTO alunos_cursos
				VALUES (cur_id, pro_id);
		END $
DELIMITER ;