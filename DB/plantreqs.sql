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
  `min` VARCHAR(45) NULL,
  `max` VARCHAR(45) NULL,
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
-- Table `user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user` ;

CREATE TABLE IF NOT EXISTS `user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `device`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `device` ;

CREATE TABLE IF NOT EXISTS `device` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `owner` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_owner_idx` (`owner` ASC),
  CONSTRAINT `fk_owner`
    FOREIGN KEY (`owner`)
    REFERENCES `user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `light_reading`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `light_reading` ;

CREATE TABLE IF NOT EXISTS `light_reading` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `time` TIME NOT NULL,
  `device_id` INT NOT NULL,
  `reading` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_device_id_idx` (`device_id` ASC),
  CONSTRAINT `fk_device_id`
    FOREIGN KEY (`device_id`)
    REFERENCES `device` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
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
INSERT INTO `light_level` (`id`, `category`, `min`, `max`, `comments`) VALUES (1, 'darkness', '0', '199', 'effectively no light');
INSERT INTO `light_level` (`id`, `category`, `min`, `max`, `comments`) VALUES (2, 'very low', '200', '499', 'inappropriate for most plants');
INSERT INTO `light_level` (`id`, `category`, `min`, `max`, `comments`) VALUES (3, 'low', '500', '999', 'good for shade-loving plants');
INSERT INTO `light_level` (`id`, `category`, `min`, `max`, `comments`) VALUES (4, 'bright indirect', '1000', '1999', 'good for many types of plants that require indirect sunlight');
INSERT INTO `light_level` (`id`, `category`, `min`, `max`, `comments`) VALUES (5, 'bright direct', '2000', '3999', 'appropriate for plants that require high light intensity');
INSERT INTO `light_level` (`id`, `category`, `min`, `max`, `comments`) VALUES (6, 'strong direct', '4000', '4999', 'good for plants with high light requirements');
INSERT INTO `light_level` (`id`, `category`, `min`, `max`, `comments`) VALUES (7, 'very bright', '5000', '5999', 'very bright indoor light');

COMMIT;


-- -----------------------------------------------------
-- Data for table `plant`
-- -----------------------------------------------------
START TRANSACTION;
USE `plantreqs`;
INSERT INTO `plant` (`id`, `scientific_name`, `light_requirement`) VALUES (1, 'epipremnum aureum', 4);

COMMIT;


-- -----------------------------------------------------
-- Data for table `user`
-- -----------------------------------------------------
START TRANSACTION;
USE `plantreqs`;
INSERT INTO `user` (`id`, `first_name`, `last_name`) VALUES (1, 'joseph', 'marulli');

COMMIT;


-- -----------------------------------------------------
-- Data for table `device`
-- -----------------------------------------------------
START TRANSACTION;
USE `plantreqs`;
INSERT INTO `device` (`id`, `name`, `owner`) VALUES (1, 'test_device', 1);

COMMIT;

