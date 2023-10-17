DELIMITER $
	-- Cria a procedure novoAlunoNoCurso, para que seja registrado na tabela uma nova relação de aluno-curso
	CREATE PROCEDURE novoAlunoNoCurso(aln_id INT, cur_id INT)
		BEGIN
			-- Insere os valores definidos na tabela alunos_cursos
			INSERT INTO alunos_cursos
				VALUES (aln_id, cur_id);
		END $
DELIMITER ;