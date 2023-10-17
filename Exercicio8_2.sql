-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema exercicio8
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema exercicio8
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `exercicio8` DEFAULT CHARACTER SET utf8 ;
USE `exercicio8` ;

-- -----------------------------------------------------
-- Table `exercicio8`.`alunos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `exercicio8`.`alunos` (
  `aln_id` INT NOT NULL AUTO_INCREMENT,
  `aln_nome` VARCHAR(400) NOT NULL,
  `aln_email` VARCHAR(100) NOT NULL,
  `aln_primeiro_nome` VARCHAR(40) NULL,
  `aln_ultimo_sobrenome` VARCHAR(40) NULL,
  PRIMARY KEY (`aln_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `exercicio8`.`cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `exercicio8`.`cursos` (
  `cur_id` INT NOT NULL AUTO_INCREMENT,
  `cur_nome` VARCHAR(100) NULL,
  PRIMARY KEY (`cur_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `exercicio8`.`professores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `exercicio8`.`professores` (
  `pro_id` INT NOT NULL AUTO_INCREMENT,
  `pro_nome` VARCHAR(400) NULL,
  `pro_salario` DECIMAL(7,2) NULL,
  PRIMARY KEY (`pro_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `exercicio8`.`alunos_cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `exercicio8`.`alunos_cursos` (
  `aln_id` INT NOT NULL,
  `cur_id` INT NOT NULL,
  PRIMARY KEY (`aln_id`, `cur_id`),
  INDEX `fk_alunos_has_cursos_cursos1_idx` (`cur_id` ASC) VISIBLE,
  INDEX `fk_alunos_has_cursos_alunos_idx` (`aln_id` ASC) VISIBLE,
  CONSTRAINT `fk_alunos_has_cursos_alunos`
    FOREIGN KEY (`aln_id`)
    REFERENCES `exercicio8`.`alunos` (`aln_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_alunos_has_cursos_cursos1`
    FOREIGN KEY (`cur_id`)
    REFERENCES `exercicio8`.`cursos` (`cur_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `exercicio8`.`professores_cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `exercicio8`.`professores_cursos` (
  `cur_id` INT NOT NULL,
  `professores_pro_id` INT NOT NULL,
  PRIMARY KEY (`cur_id`, `professores_pro_id`),
  INDEX `fk_cursos_has_professores_professores1_idx` (`professores_pro_id` ASC) VISIBLE,
  INDEX `fk_cursos_has_professores_cursos1_idx` (`cur_id` ASC) VISIBLE,
  CONSTRAINT `fk_cursos_has_professores_cursos1`
    FOREIGN KEY (`cur_id`)
    REFERENCES `exercicio8`.`cursos` (`cur_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cursos_has_professores_professores1`
    FOREIGN KEY (`professores_pro_id`)
    REFERENCES `exercicio8`.`professores` (`pro_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
