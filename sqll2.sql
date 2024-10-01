-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para trabalhofinal
CREATE DATABASE IF NOT EXISTS `trabalhofinal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `trabalhofinal`;

-- Copiando estrutura para tabela trabalhofinal.moradores
CREATE TABLE IF NOT EXISTS `moradores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(50) DEFAULT NULL,
  `datanascimento` date DEFAULT NULL,
  `quartos` int(11) DEFAULT NULL,
  `nome_morador` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela trabalhofinal.moradores: ~36 rows (aproximadamente)
DELETE FROM `moradores`;
INSERT INTO `moradores` (`id`, `cpf`, `datanascimento`, `quartos`, `nome_morador`) VALUES
	(5, '123.456.789.10', '0000-00-00', 1, 'cleberson'),
	(6, '123.456.789.10', '1999-02-11', 4, 'julia'),
	(8, '879.234.987-00', '2000-09-06', 1, 'jeferson'),
	(11, '934.385.847-00', '2009-07-21', 1, 'sofia'),
	(13, '843.937.273-00', '2000-06-19', 1, 'julio'),
	(15, '939.934.743-00', '2000-05-20', 1, 'cristiane'),
	(17, '945.385.284-00', '1997-04-25', 1, 'mariane'),
	(19, '853.948.284-00', '1996-09-17', 1, 'vitor'),
	(21, '894.948.294-00', '1993-09-25', 1, 'thaeme'),
	(23, '854.542.956-00', '2009-12-09', 1, 'victoria'),
	(25, '854.567.059-00', '1998-09-17', 1, 'jhonatan'),
	(27, '783.934.284-00', '1009-09-09', 1, 'afonso'),
	(29, '845.948.948-00', '2010-09-19', 1, 'carlos'),
	(31, '854.967.384-00', '2000-09-03', 1, 'paulo'),
	(33, '237.347.937-00', '2000-06-09', 2, 'patricia'),
	(35, '897.283.384-00', '2001-07-15', 2, 'haryel'),
	(37, '384.983.945-00', '1995-05-19', 2, 'joelma'),
	(38, '984.894.836-00', '1994-10-07', 2, 'raissa'),
	(40, '948.937.934-00', '1990-10-03', 3, 'samuca'),
	(42, '934.937.832-00', '2000-12-19', 3, 'joao vitor'),
	(44, '783.923.983-00', '2002-09-04', 3, 'marcia'),
	(45, '834.938.843-00', '1990-09-06', 3, 'cristina'),
	(47, '843.273.827-00', '1999-10-16', 4, 'heitor'),
	(48, '838.293.384-00', '1999-10-19', 4, 'pierre'),
	(49, '893.938.903-00', '1997-10-19', 4, 'marisa'),
	(50, '943.395.2093-00', '2003-06-15', 4, 'otavio'),
	(51, '934.384.827-00', '2007-03-03', 5, 'viviane'),
	(52, '938.934.835-00', '2004-05-24', 5, 'jessica'),
	(53, '643.293.947-00', '2012-12-12', 5, 'bruno'),
	(54, '836.543.846-00', '2006-06-06', 5, 'mariane'),
	(55, '834.374.743-00', '2021-12-21', 6, 'sofia'),
	(56, '832.847.645-00', '2001-12-31', 6, 'victoria'),
	(57, '843.721.837-00', '2008-05-14', 6, 'julio'),
	(58, '834.982.745-00', '2009-06-15', 7, 'sofia julia'),
	(59, '932.732.832-00', '2006-09-19', 8, 'carlos'),
	(60, '028.743.643-00', '0000-00-00', 8, 'kauany');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
