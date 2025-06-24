-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema mmd_criminalidade
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mmd_criminalidade` ;

-- -----------------------------------------------------
-- Schema mmd_criminalidade
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mmd_criminalidade` DEFAULT CHARACTER SET utf8 ;
USE `mmd_criminalidade` ;

-- -----------------------------------------------------
-- Table `mmd_criminalidade`.`dimcategoriadocrime`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_criminalidade`.`dimcategoriadocrime` (
  `IdDimCategoriadoCrime` INT(11) NOT NULL AUTO_INCREMENT,
  `DeCategoriaCrime` VARCHAR(3) NULL DEFAULT NULL,
  PRIMARY KEY (`IdDimCategoriadoCrime`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mmd_criminalidade`.`dimidhm`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_criminalidade`.`dimidhm` (
  `IdIDHM` INT(11) NOT NULL AUTO_INCREMENT,
  `Posicao` SMALLINT(6) NULL DEFAULT NULL,
  `UFIDHM` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`IdIDHM`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mmd_criminalidade`.`dimidhmeducacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_criminalidade`.`dimidhmeducacao` (
  `IdIDHMEducacao` INT(11) NOT NULL AUTO_INCREMENT,
  `Posicao` SMALLINT(6) NULL DEFAULT NULL,
  `UFEducacao` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`IdIDHMEducacao`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mmd_criminalidade`.`dimidhmlongevidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_criminalidade`.`dimidhmlongevidade` (
  `IdIDHMLongevidade` INT(11) NOT NULL AUTO_INCREMENT,
  `Posicao` SMALLINT(6) NULL DEFAULT NULL,
  `UFLongevidade` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`IdIDHMLongevidade`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mmd_criminalidade`.`dimidhmrenda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_criminalidade`.`dimidhmrenda` (
  `IdIDHMRenda` INT(11) NOT NULL AUTO_INCREMENT,
  `Posicao` SMALLINT(6) NULL DEFAULT NULL,
  `UfRenda` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`IdIDHMRenda`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mmd_criminalidade`.`dimsexo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_criminalidade`.`dimsexo` (
  `idSexo` INT(11) NOT NULL AUTO_INCREMENT,
  `DeSexo` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idSexo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mmd_criminalidade`.`dimtempo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_criminalidade`.`dimtempo` (
  `IdTempo` INT(11) NOT NULL AUTO_INCREMENT,
  `Ano` SMALLINT(6) NULL DEFAULT NULL,
  `Mes` SMALLINT(6) NULL DEFAULT NULL,
  `Semestre` SMALLINT(6) NULL DEFAULT NULL,
  `Nome_mes` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`IdTempo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mmd_criminalidade`.`dimtipocrime`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_criminalidade`.`dimtipocrime` (
  `idTipoCrime` INT(11) NOT NULL AUTO_INCREMENT,
  `DeTipoCrime` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idTipoCrime`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mmd_criminalidade`.`dimuf`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_criminalidade`.`dimuf` (
  `idDimUF` INT(11) NOT NULL AUTO_INCREMENT,
  `DeUF` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idDimUF`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema mmd_criminalidade
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mmd_criminalidade` ;

-- -----------------------------------------------------
-- Schema mmd_criminalidade
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mmd_criminalidade` DEFAULT CHARACTER SET utf8 ;
USE `mmd_criminalidade` ;

-- -----------------------------------------------------
-- Table `mmd_criminalidade`.`dimcategoriadocrime`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_criminalidade`.`dimcategoriadocrime` (
  `IdDimCategoriadoCrime` INT(11) NOT NULL AUTO_INCREMENT,
  `DeCategoriaCrime` VARCHAR(3) NULL DEFAULT NULL,
  PRIMARY KEY (`IdDimCategoriadoCrime`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mmd_criminalidade`.`dimidhm`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_criminalidade`.`dimidhm` (
  `IdIDHM` INT(11) NOT NULL AUTO_INCREMENT,
  `Posicao` SMALLINT(6) NULL DEFAULT NULL,
  `UFIDHM` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`IdIDHM`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mmd_criminalidade`.`dimidhmeducacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_criminalidade`.`dimidhmeducacao` (
  `IdIDHMEducacao` INT(11) NOT NULL AUTO_INCREMENT,
  `Posicao` SMALLINT(6) NULL DEFAULT NULL,
  `UFEducacao` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`IdIDHMEducacao`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mmd_criminalidade`.`dimidhmlongevidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_criminalidade`.`dimidhmlongevidade` (
  `IdIDHMLongevidade` INT(11) NOT NULL AUTO_INCREMENT,
  `Posicao` SMALLINT(6) NULL DEFAULT NULL,
  `UFLongevidade` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`IdIDHMLongevidade`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mmd_criminalidade`.`dimidhmrenda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_criminalidade`.`dimidhmrenda` (
  `IdIDHMRenda` INT(11) NOT NULL AUTO_INCREMENT,
  `Posicao` SMALLINT(6) NULL DEFAULT NULL,
  `UfRenda` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`IdIDHMRenda`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mmd_criminalidade`.`dimsexo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_criminalidade`.`dimsexo` (
  `idSexo` INT(11) NOT NULL AUTO_INCREMENT,
  `DeSexo` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idSexo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mmd_criminalidade`.`dimtempo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_criminalidade`.`dimtempo` (
  `IdTempo` INT(11) NOT NULL AUTO_INCREMENT,
  `Ano` SMALLINT(6) NULL DEFAULT NULL,
  `Mes` SMALLINT(6) NULL DEFAULT NULL,
  `Semestre` SMALLINT(6) NULL DEFAULT NULL,
  `Nome_mes` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`IdTempo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mmd_criminalidade`.`dimtipocrime`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_criminalidade`.`dimtipocrime` (
  `idTipoCrime` INT(11) NOT NULL AUTO_INCREMENT,
  `DeTipoCrime` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idTipoCrime`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mmd_criminalidade`.`dimuf`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_criminalidade`.`dimuf` (
  `idDimUF` INT(11) NOT NULL AUTO_INCREMENT,
  `DeUF` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idDimUF`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mmd_criminalidade`.`fatocrime`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmd_criminalidade`.`fatocrime` (
  `idSexo` INT(11) NOT NULL,
  `idUF` INT(11) NOT NULL,
  `IdIDHM` INT(11) NOT NULL,
  `IdLongevidade` INT(11) NOT NULL,
  `IdRenda` INT(11) NOT NULL,
  `IdEducacao` INT(11) NOT NULL,
  `Ocorrencias` INT(11) NULL DEFAULT NULL,
  `idTipoCrime` INT(11) NOT NULL,
  `IdDimCategoriadoCrime` INT(11) NOT NULL,
  `IdTempo` INT(11) NOT NULL,
  PRIMARY KEY (`idSexo`, `idUF`, `IdIDHM`, `IdLongevidade`, `IdRenda`, `IdEducacao`, `idTipoCrime`, `IdDimCategoriadoCrime`, `IdTempo`),
  INDEX `fk_Fato Crime_DimSexo_idx` (`idSexo` ASC) ,
  INDEX `fk_Fato Crime_UF1_idx` (`idUF` ASC) ,
  INDEX `fk_Fato Crime_DimIDHM1_idx` (`IdIDHM` ASC) ,
  INDEX `fk_Fato Crime_DimLongevidade1_idx` (`IdLongevidade` ASC) ,
  INDEX `fk_Fato Crime_DimRenda1_idx` (`IdRenda` ASC) ,
  INDEX `fk_Fato Crime_DimEducação1_idx` (`IdEducacao` ASC) ,
  INDEX `fk_Fato Crime_DimTipoCrime1_idx` (`idTipoCrime` ASC) ,
  INDEX `fk_FatoCrime_DimCategoriadoCrime1_idx` (`IdDimCategoriadoCrime` ASC) ,
  INDEX `fk_FatoCrime_DimTempo1_idx` (`IdTempo` ASC) ,
  CONSTRAINT `fk_Fato Crime_DimEducação1`
    FOREIGN KEY (`IdEducacao`)
    REFERENCES `mmd_criminalidade`.`dimidhmeducacao` (`IdIDHMEducacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fato Crime_DimIDHM1`
    FOREIGN KEY (`IdIDHM`)
    REFERENCES `mmd_criminalidade`.`dimidhm` (`IdIDHM`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fato Crime_DimLongevidade1`
    FOREIGN KEY (`IdLongevidade`)
    REFERENCES `mmd_criminalidade`.`dimidhmlongevidade` (`IdIDHMLongevidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fato Crime_DimRenda1`
    FOREIGN KEY (`IdRenda`)
    REFERENCES `mmd_criminalidade`.`dimidhmrenda` (`IdIDHMRenda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fato Crime_DimSexo`
    FOREIGN KEY (`idSexo`)
    REFERENCES `mmd_criminalidade`.`dimsexo` (`idSexo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fato Crime_DimTipoCrime1`
    FOREIGN KEY (`idTipoCrime`)
    REFERENCES `mmd_criminalidade`.`dimtipocrime` (`idTipoCrime`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fato Crime_UF1`
    FOREIGN KEY (`idUF`)
    REFERENCES `mmd_criminalidade`.`dimuf` (`idDimUF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_FatoCrime_DimCategoriadoCrime1`
    FOREIGN KEY (`IdDimCategoriadoCrime`)
    REFERENCES `mmd_criminalidade`.`dimcategoriadocrime` (`IdDimCategoriadoCrime`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_FatoCrime_DimTempo1`
    FOREIGN KEY (`IdTempo`)
    REFERENCES `mmd_criminalidade`.`dimtempo` (`IdTempo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

USE `mmd_criminalidade` ;

-- -----------------------------------------------------
-- procedure dimensao_tempo
-- -----------------------------------------------------

DELIMITER $$
USE `mmd_criminalidade`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `dimensao_tempo`(IN startdate DATE, IN stopdate DATE)
BEGIN
    DECLARE currentdate DATE;
    SET currentdate = DATE_FORMAT(startdate, '%Y-%m-01'); -- força para o primeiro dia do mês

    WHILE currentdate <= stopdate DO
        INSERT INTO mmd_criminalidade.dimtempo (
            IdTempo,
            Ano,
            Mes,
            Semestre,
            nome_mes
        )
        VALUES (
            CAST(DATE_FORMAT(currentdate, '%Y%m') AS UNSIGNED), -- ID como AAAAMM
            YEAR(currentdate),
            MONTH(currentdate),
            FLOOR(1 + (MONTH(currentdate) - 1) / 6),
            DATE_FORMAT(currentdate, '%M')
        );

        -- pula para o próximo mês
        SET currentdate = ADDDATE(currentdate, INTERVAL 1 MONTH);
    END WHILE;
END$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
