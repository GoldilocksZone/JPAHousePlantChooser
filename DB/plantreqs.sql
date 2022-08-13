-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema plantreqs
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `plantreqs` ;

-- -----------------------------------------------------
-- Schema plantreqs
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `plantreqs` DEFAULT CHARACTER SET utf8 ;
USE `plantreqs` ;

-- -----------------------------------------------------
-- Table `light_level`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `light_level` ;

CREATE TABLE IF NOT EXISTS `light_level` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `category` VARCHAR(45) NULL,
  `foot_candle_min` VARCHAR(45) NULL,
  `foot_candle_max` VARCHAR(45) NULL,
  `comments` TEXT(65535) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `category_UNIQUE` (`category` ASC),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `plant`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `plant` ;

CREATE TABLE IF NOT EXISTS `plant` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `scientific_name` VARCHAR(45) NOT NULL,
  `light_requirement` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`scientific_name` ASC),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `fk_light_id_idx` (`light_requirement` ASC),
  CONSTRAINT `fk_light_id`
    FOREIGN KEY (`light_requirement`)
    REFERENCES `light_level` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `common_names`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `common_names` ;

CREATE TABLE IF NOT EXISTS `common_names` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `common_name` VARCHAR(45) NOT NULL,
  `plant_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `light_readings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `light_readings` ;

CREATE TABLE IF NOT EXISTS `light_readings` (
  `datetime` DATETIME NOT NULL,
  PRIMARY KEY (`datetime`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS plantparent;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'plantparent' IDENTIFIED BY 'plantparent';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'plantparent';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `light_level`
-- -----------------------------------------------------
START TRANSACTION;
USE `plantreqs`;
INSERT INTO `light_level` (`id`, `category`, `foot_candle_min`, `foot_candle_max`, `comments`) VALUES (1, 'darkness', '0', '199', 'effectively no light');
INSERT INTO `light_level` (`id`, `category`, `foot_candle_min`, `foot_candle_max`, `comments`) VALUES (2, 'very low', '200', '499', 'inappropriate for most plants');
INSERT INTO `light_level` (`id`, `category`, `foot_candle_min`, `foot_candle_max`, `comments`) VALUES (3, 'low', '500', '999', 'good for shade-loving plants');
INSERT INTO `light_level` (`id`, `category`, `foot_candle_min`, `foot_candle_max`, `comments`) VALUES (4, 'bright indirect', '1000', '1999', 'good for many types of plants that require indirect sunlight');
INSERT INTO `light_level` (`id`, `category`, `foot_candle_min`, `foot_candle_max`, `comments`) VALUES (5, 'bright direct', '2000', '3999', 'appropriate for plants that require high light intensity');
INSERT INTO `light_level` (`id`, `category`, `foot_candle_min`, `foot_candle_max`, `comments`) VALUES (6, 'strong direct', '4000', '4999', 'good for plants with high light requirements');
INSERT INTO `light_level` (`id`, `category`, `foot_candle_min`, `foot_candle_max`, `comments`) VALUES (7, 'very bright', '5000', NULL, 'very bright indoor light');

COMMIT;


-- -----------------------------------------------------
-- Data for table `plant`
-- -----------------------------------------------------
START TRANSACTION;
USE `plantreqs`;
INSERT INTO `plant` (`id`, `scientific_name`, `light_requirement`) VALUES (1, 'epipremnum aureum', 4);

COMMIT;


-- -----------------------------------------------------
-- Data for table `common_names`
-- -----------------------------------------------------
START TRANSACTION;
USE `plantreqs`;
INSERT INTO `common_names` (`id`, `common_name`, `plant_id`) VALUES (DEFAULT, 'Chinese money plant', '1');

COMMIT;

