-- Insere dados na tabela cursos
CALL novoCurso('Engenharia Mecânica');
CALL novoCurso('Medicina');
CALL novoCurso('Ciência da Computação');
CALL novoCurso('Direito');
CALL novoCurso('Administração de Empresas');
CALL novoCurso('Psicologia');
CALL novoCurso('Arquitetura e Urbanismo');
CALL novoCurso('Engenharia Civil');
CALL novoCurso('Ciências Biológicas');
CALL novoCurso('Economia');

-- Exibe os dados da tabela cursos
CALL selecionarTudo("cursos");