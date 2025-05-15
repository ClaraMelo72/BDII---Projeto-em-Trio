-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema escola_musica
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema escola_musica
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `escola_musica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `escola_musica` ;

-- -----------------------------------------------------
-- Table `escola_musica`.`Orquestra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escola_musica`.`Orquestra` (
  `idOrquestra` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `pais` VARCHAR(45) NOT NULL,
  `data_criacao` DATE NOT NULL,
  PRIMARY KEY (`idOrquestra`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escola_musica`.`Sinfonia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escola_musica`.`Sinfonia` (
  `idSinfonia` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `compositor` VARCHAR(45) NOT NULL,
  `data_composicao` DATE NOT NULL,
  PRIMARY KEY (`idSinfonia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escola_musica`.`Funcao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escola_musica`.`Funcao` (
  `idFuncao` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `data_inicio` DATE NOT NULL,
  PRIMARY KEY (`idFuncao`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escola_musica`.`Instrumento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escola_musica`.`Instrumento` (
  `idInstrumento` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idInstrumento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escola_musica`.`Apresentar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escola_musica`.`Apresentar` (
  `Sinfonia_idSinfonia` INT NOT NULL,
  `Orquestra_idOrquestra` INT NULL,
  `data_execucao` DATE NOT NULL,
  `local` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Sinfonia_idSinfonia`),
  INDEX `fk_Sinfonia_has_Orquestra_Orquestra1_idx` (`Orquestra_idOrquestra` ASC) VISIBLE,
  INDEX `fk_Sinfonia_has_Orquestra_Sinfonia1_idx` (`Sinfonia_idSinfonia` ASC) VISIBLE,
  CONSTRAINT `fk_Sinfonia_has_Orquestra_Sinfonia1`
    FOREIGN KEY (`Sinfonia_idSinfonia`)
    REFERENCES `escola_musica`.`Sinfonia` (`idSinfonia`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Sinfonia_has_Orquestra_Orquestra1`
    FOREIGN KEY (`Orquestra_idOrquestra`)
    REFERENCES `escola_musica`.`Orquestra` (`idOrquestra`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escola_musica`.`Musico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escola_musica`.`Musico` (
  `CPF` VARCHAR(14) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `data_nasc` DATE NOT NULL,
  `genero` CHAR(1) BINARY NULL,
  `nacionalidade` VARCHAR(45) NOT NULL,
  `formacao` VARCHAR(45) NOT NULL,
  `email` VARCHAR(40) NOT NULL,
  `Orquestra_idOrquestra` INT NOT NULL,
  PRIMARY KEY (`CPF`, `Orquestra_idOrquestra`),
  INDEX `fk_Musico_Orquestra1_idx` (`Orquestra_idOrquestra` ASC) VISIBLE,
  CONSTRAINT `fk_Musico_Orquestra1`
    FOREIGN KEY (`Orquestra_idOrquestra`)
    REFERENCES `escola_musica`.`Orquestra` (`idOrquestra`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escola_musica`.`Tocar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escola_musica`.`Tocar` (
  `Instrumento_idInstrumento` INT NOT NULL,
  `Musico_CPF` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`Instrumento_idInstrumento`, `Musico_CPF`),
  INDEX `fk_Instrumento_has_Musico_Instrumento1_idx` (`Instrumento_idInstrumento` ASC) VISIBLE,
  INDEX `fk_Tocar_Musico1_idx` (`Musico_CPF` ASC) VISIBLE,
  CONSTRAINT `fk_Instrumento_has_Musico_Instrumento1`
    FOREIGN KEY (`Instrumento_idInstrumento`)
    REFERENCES `escola_musica`.`Instrumento` (`idInstrumento`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Tocar_Musico1`
    FOREIGN KEY (`Musico_CPF`)
    REFERENCES `escola_musica`.`Musico` (`CPF`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escola_musica`.`Interpretar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escola_musica`.`Interpretar` (
  `Sinfonia_idSinfonia` INT NOT NULL,
  `Funcao_idFuncao` INT NOT NULL,
  `Instrumento_idInstrumento` INT NOT NULL,
  `Musico_CPF` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`Sinfonia_idSinfonia`, `Funcao_idFuncao`, `Instrumento_idInstrumento`, `Musico_CPF`),
  INDEX `fk_Musico_has_Sinfonia_Sinfonia1_idx` (`Sinfonia_idSinfonia` ASC) VISIBLE,
  INDEX `fk_Musico_has_Sinfonia_Funcao1_idx` (`Funcao_idFuncao` ASC) VISIBLE,
  INDEX `fk_Interpretar_Instrumento1_idx` (`Instrumento_idInstrumento` ASC) VISIBLE,
  INDEX `fk_Interpretar_Musico1_idx` (`Musico_CPF` ASC) VISIBLE,
  CONSTRAINT `fk_Musico_has_Sinfonia_Sinfonia1`
    FOREIGN KEY (`Sinfonia_idSinfonia`)
    REFERENCES `escola_musica`.`Sinfonia` (`idSinfonia`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Musico_has_Sinfonia_Funcao1`
    FOREIGN KEY (`Funcao_idFuncao`)
    REFERENCES `escola_musica`.`Funcao` (`idFuncao`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Interpretar_Instrumento1`
    FOREIGN KEY (`Instrumento_idInstrumento`)
    REFERENCES `escola_musica`.`Instrumento` (`idInstrumento`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Interpretar_Musico1`
    FOREIGN KEY (`Musico_CPF`)
    REFERENCES `escola_musica`.`Musico` (`CPF`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escola_musica`.`Endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escola_musica`.`Endereco` (
  `Musico_CPF` VARCHAR(14) NOT NULL,
  `UF` CHAR(2) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `logradouro` VARCHAR(45) NOT NULL,
  `numero` VARCHAR(5) NOT NULL,
  `complemento` VARCHAR(45) NULL,
  `CEP` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`Musico_CPF`),
  CONSTRAINT `fk_Endereco_Musico1`
    FOREIGN KEY (`Musico_CPF`)
    REFERENCES `escola_musica`.`Musico` (`CPF`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escola_musica`.`Telefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escola_musica`.`Telefone` (
  `idTelefone` INT NOT NULL,
  `numero` VARCHAR(15) NOT NULL,
  `Musico_CPF` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`idTelefone`),
  INDEX `fk_Telefone_Musico1_idx` (`Musico_CPF` ASC) VISIBLE,
  CONSTRAINT `fk_Telefone_Musico1`
    FOREIGN KEY (`Musico_CPF`)
    REFERENCES `escola_musica`.`Musico` (`CPF`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
