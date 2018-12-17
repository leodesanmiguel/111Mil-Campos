-- MySQL Workbench Synchronization
-- Generated: 2018-12-12 15:53
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Leo

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `Cordoba2` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;

CREATE TABLE IF NOT EXISTS `Cordoba2`.`Campo` (
  `idCampo` INT(11) NOT NULL AUTO_INCREMENT,
  `NombreCampo` VARCHAR(45) NOT NULL,
  `Superficie` REAL NOT NULL,
  PRIMARY KEY (`idCampo`),
  UNIQUE INDEX `idCampo_UNIQUE` (`idCampo` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `Cordoba2`.`Lote` (
  `NroLote` INT(11) NOT NULL,
  `Campo_idCampo` INT(11) NOT NULL,
  `SuperficieLote` INT(11) NOT NULL,
  `TipoSuelo_idTipoSuelo` INT(11) NOT NULL,
  PRIMARY KEY (`NroLote`, `Campo_idCampo`, `TipoSuelo_idTipoSuelo`),
  INDEX `fk_Lote_Campo_idx` (`Campo_idCampo` ASC) VISIBLE,
  INDEX `fk_Lote_TipoSuelo1_idx` (`TipoSuelo_idTipoSuelo` ASC) VISIBLE,
  CONSTRAINT `fk_Lote_Campo`
    FOREIGN KEY (`Campo_idCampo`)
    REFERENCES `Cordoba2`.`Campo` (`idCampo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Lote_TipoSuelo1`
    FOREIGN KEY (`TipoSuelo_idTipoSuelo`)
    REFERENCES `Cordoba2`.`TipoSuelo` (`idTipoSuelo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `Cordoba2`.`TipoSuelo` (
  `idTipoSuelo` INT(11) NOT NULL AUTO_INCREMENT,
  `NroSuelo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTipoSuelo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `Cordoba2`.`Cultivo` (
  `NombreCultivo` VARCHAR(15) NOT NULL,
  `TipoSuelo_idTipoSuelo` INT(11) NOT NULL,
  PRIMARY KEY (`NombreCultivo`, `TipoSuelo_idTipoSuelo`),
  INDEX `fk_Cultivo_TipoSuelo1_idx` (`TipoSuelo_idTipoSuelo` ASC) VISIBLE,
  CONSTRAINT `fk_Cultivo_TipoSuelo1`
    FOREIGN KEY (`TipoSuelo_idTipoSuelo`)
    REFERENCES `Cordoba2`.`TipoSuelo` (`idTipoSuelo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `Cordoba2`.`Minerales` (
  `idMinerales` INT(11) NOT NULL AUTO_INCREMENT,
  `NombreMineral` VARCHAR(45) NOT NULL,
  `PorcentajeMineral` REAL NOT NULL,
  `TipoSuelo_idTipoSuelo` INT(11) NOT NULL,
  PRIMARY KEY (`idMinerales`, `TipoSuelo_idTipoSuelo`),
  INDEX `fk_Minerales_TipoSuelo1_idx` (`TipoSuelo_idTipoSuelo` ASC) VISIBLE,
  CONSTRAINT `fk_Minerales_TipoSuelo1`
    FOREIGN KEY (`TipoSuelo_idTipoSuelo`)
    REFERENCES `Cordoba2`.`TipoSuelo` (`idTipoSuelo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `Cordoba2`.`EstadoCampo` (
  `IdEstadoCampo` INT(11) NOT NULL AUTO_INCREMENT,
  `NombreEstadoCampo` VARCHAR(45) NOT NULL,
  `Campo_idCampo` INT(11) NOT NULL,
  PRIMARY KEY (`IdEstadoCampo`),
  INDEX `fk_EstadoCampo_Campo1_idx` (`Campo_idCampo` ASC) VISIBLE,
  CONSTRAINT `fk_EstadoCampo_Campo1`
    FOREIGN KEY (`Campo_idCampo`)
    REFERENCES `Cordoba2`.`Campo` (`idCampo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
