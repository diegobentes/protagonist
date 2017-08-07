-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.14 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para dbteste
CREATE DATABASE IF NOT EXISTS `dbteste` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dbteste`;

-- Copiando estrutura para tabela dbteste.protagonist_categories
DROP TABLE IF EXISTS `protagonist_categories`;
CREATE TABLE IF NOT EXISTS `protagonist_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `icon` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela dbteste.protagonist_menus
DROP TABLE IF EXISTS `protagonist_menus`;
CREATE TABLE IF NOT EXISTS `protagonist_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `icon` varchar(50) DEFAULT '0',
  `category_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_CATEGORY` (`category_id`),
  CONSTRAINT `FK_CATEGORY` FOREIGN KEY (`category_id`) REFERENCES `protagonist_categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela dbteste.protagonist_modules
DROP TABLE IF EXISTS `protagonist_modules`;
CREATE TABLE IF NOT EXISTS `protagonist_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `icon` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela dbteste.protagonist_sets
DROP TABLE IF EXISTS `protagonist_sets`;
CREATE TABLE IF NOT EXISTS `protagonist_sets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `modules_id` int(11) NOT NULL DEFAULT '0',
  `tabs_id` int(11) NOT NULL DEFAULT '0',
  `menus_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_MODULES` (`modules_id`),
  KEY `FK_MENUS` (`menus_id`),
  KEY `FK_TABS` (`tabs_id`),
  CONSTRAINT `FK_MENUS` FOREIGN KEY (`menus_id`) REFERENCES `protagonist_menus` (`id`),
  CONSTRAINT `FK_MODULES` FOREIGN KEY (`modules_id`) REFERENCES `protagonist_modules` (`id`),
  CONSTRAINT `FK_TABS` FOREIGN KEY (`tabs_id`) REFERENCES `protagonist_tabs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela dbteste.protagonist_tabs
DROP TABLE IF EXISTS `protagonist_tabs`;
CREATE TABLE IF NOT EXISTS `protagonist_tabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `icon` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
