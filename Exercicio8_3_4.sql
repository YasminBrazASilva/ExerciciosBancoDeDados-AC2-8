DELIMITER $
	CREATE PROCEDURE novoAlunoNoCurso(aln_id INT, cur_id INT)
		BEGIN
			INSERT INTO alunos_cursos
				VALUES (aln_id, cur_id);
		END $
DELIMITER ;