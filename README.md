# ExerciciosBancoDeDados-AC2-8
Exercícios para AC2 da matéria de Banco de Dados do 2º semestre de ADS

Crie um banco de dados para armazenar alunos, cursos e professores de uma universidade

### ETAPA 1:
* Faça a modelagem do banco e identifique as entidades, seus atributos e relacionamentos <br>
  * Modelo conceitual: <br>
   ![ExercicioModeloConceitual8_1.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/ExercicioModeloConceitual8_1.png)<br>
   * Modelo lógico: <br>
   ![ExercicioModeloLogico8_1.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/ExercicioModeloLogico8_1.png)<br>

---

### ETAPA 2:
* Crie o modelo físico do banco de dados (script SQL)<br>
A criação das tabelas pode ser vista em: [Exercicio8_2.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/Exercicio8_2.sql) <br> 
  ![ExercicioTela8_2_1.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/ExercicioTela8_2_1.png)
  ![ExercicioTela8_2_2.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/ExercicioTela8_2_2.png)
  ![ExercicioTela8_2_3.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/ExercicioTela8_2_3.png)
  ![ExercicioTela8_2_4.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/ExercicioTela8_2_4.png)
  ![ExercicioTela8_2_5.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/ExercicioTela8_2_5.png)

---
### ETAPA 3:
* Utilize Stored Procedures para automatizar a inserção e seleção dos cursos
  * A criação da stored procedure **selecionarTudo** pode ser vista em: [Exercicio8_3_0.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/Exercicio8_3_0.sql) <br>
  * A criação da stored procedure **novoAluno** pode ser vista em: [Exercicio8_3_1.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/Exercicio8_3_1.sql) <br>
    * Sua execução pode ser vista [neste arquivo](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/Exercicio8_3_1_1.sql), o qual gerou [este relatório](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/ExercicioRelatorio8_3_1_1.csv). <br>
  * A criação da stored procedure **novoCurso** pode ser vista em: [Exercicio8_3_2.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/Exercicio8_3_2.sql) <br>
    * Sua execução pode ser vista [neste arquivo](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/Exercicio8_3_2_1.sql), o qual gerou [este relatório](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/ExercicioRelatorio8_3_2_1.csv). <br>
  * A criação da stored procedure **novoProfessor** pode ser vista em: [Exercicio8_3_3.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/Exercicio8_3_3.sql) <br>
    * Sua execução pode ser vista [neste arquivo](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/Exercicio8_3_3_1.sql), o qual gerou [este relatório](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/ExercicioRelatorio8_3_3_1.csv). <br>
  * A criação da stored procedure **novoAlunoNoCurso** pode ser vista em: [Exercicio8_3_4.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/Exercicio8_3_4.sql) <br>
    * Sua execução pode ser vista [neste arquivo](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/Exercicio8_3_4_1.sql), o qual gerou [este relatório](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/ExercicioRelatorio8_3_4_1.csv). <br> 
  * A criação da stored procedure **novoCursoParaOProfessor** pode ser vista em: [Exercicio8_3_5.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/Exercicio8_3_5.sql) <br>
    * Sua execução pode ser vista [neste arquivo](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/Exercicio8_3_5_1.sql), o qual gerou [este relatório](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-8/blob/main/ExercicioRelatorio8_3_5_1.csv). <br>  
