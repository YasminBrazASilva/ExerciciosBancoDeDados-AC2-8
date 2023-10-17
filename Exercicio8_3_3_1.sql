-- Insere dados na tabela professores
CALL novoProfessor('José Oliveira', 5900);
CALL novoProfessor('Isabel Ferreira', 6000);
CALL novoProfessor('Luísa Costa', 6100);
CALL novoProfessor('António Silva', 5700);
CALL novoProfessor('Mariana Ribeiro', 6300);
CALL novoProfessor('Manuel Alves', 6400);
CALL novoProfessor('Fernanda Rodrigues', 6200);
CALL novoProfessor('Luiz Gomes', 5500);
CALL novoProfessor('Cláudia Pereira', 5600);
CALL novoProfessor('Ricardo Sousa', 5700);
CALL novoProfessor('Vânia Almeida', 5800);
CALL novoProfessor('Sérgio Rodrigues', 6500);

-- Exibe os dados da tabela professores
CALL selecionarTudo("professores");