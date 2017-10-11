-- --------------------------------------------------------
-- Hôte :                        192.168.99.100
-- Version du serveur:           5.6.28 - MySQL Community Server (GPL)
-- SE du serveur:                Linux
-- HeidiSQL Version:             9.4.0.5174
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour AMT
CREATE DATABASE IF NOT EXISTS `AMT` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `AMT`;

-- Export de la structure de la table AMT. Kebab_Shop
CREATE TABLE IF NOT EXISTS `Kebab_Shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `kebab_average_price` float DEFAULT NULL,
  `creation_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Export de données de la table AMT.Kebab_Shop : ~2 rows (environ)
/*!40000 ALTER TABLE `Kebab_Shop` DISABLE KEYS */;
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(1, 'Olivier D\'Orient', 'Rue des Moulins 1', 'Yverdon-les-Bains', 'Suisse', '079 525 79 70', 10, '2017-10-11 14:17:35');
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(2, 'Gany', 'Grande Rue', 'Payerne', 'Suisse', NULL, 10.5, '2017-10-11 14:19:43');
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(3, 'Hallo Kebab', 'Rue de Lausanne', 'Payerne', 'Suisse', NULL, 10, '2017-10-11 12:21:08');
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(4, 'DurumLand', 'Place de la Riponne', 'Lausanne', 'Suisse', '026 665 12 23', 11, '2017-10-11 12:36:12');
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(5, 'Tony Kebab', 'Rue du saint plomb', 'Colombier', 'Suisse', '079 512 23 23', 13, '2017-10-11 12:35:09');
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(6, 'One Kebab', 'Place des Ours', 'Berne', 'Suisse', NULL, 11, '2017-10-11 13:09:13');
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(7, 'The Kebab', 'Place des Ours', 'Berne', 'Suisse', NULL, 11, '2017-10-11 13:09:13');
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(8, 'Master Kebab', 'Place centrale', 'Yverdon-les-Bains', 'Suisse', NULL, 10, '2017-10-11 13:09:13');
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(9, 'Alex Kebab', 'Port', 'Estavayer-le-Lac', 'Suisse', NULL, 10, '2017-10-11 13:09:13');
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(10, 'My Kebab', 'Fenette 2', 'Payerne', 'Suisse', NULL, 10, '2017-10-11 13:09:13');
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(11, 'Masterfood', 'Ouchy', 'Lausanne', 'Suisse', NULL, 12, '2017-10-11 13:09:13');
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(12, 'Gabekab', 'Place centrale', 'Estavayer-le-Lac', 'Suisse', NULL, 10.5, '2017-10-11 13:09:13');
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(13, 'Nabab Kebab', NULL, 'Toulon', 'France', NULL, 7, '2017-10-11 13:09:13');
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(14, 'Nabab Kebab', NULL, 'Nice', 'France', NULL, 7, '2017-10-11 13:09:13');
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(15, 'Nabab Kebab', 'Porte Sud', 'Paris', 'France', '0033 123 23 54', 8, '2017-10-11 13:09:13');
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(16, 'Nabab Kebab', 'Boix de boulogne', 'Geneve', 'Suisse', '0041 987 48 92', 7, '2017-10-11 13:09:13');
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(17, 'Nabab Kebab', 'Grande Rue', 'Marseille', 'France', '0033 274 38 11', 7, '2017-10-11 13:09:13');
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(18, 'Nabab Kebab', 'Grande Rue', 'Toulouse', 'France', '0033 274 12 11', 7, '2017-10-11 13:09:13');
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(19, 'Nabab Kebab', 'Grande avenue', 'Paris', 'France', '0033 274 38 73', 8, '2017-10-11 13:09:13');
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(20, 'Nabab Kebab', 'Rue du stade', 'Bordeau', 'France', '0033 228 12 11', 7, '2017-10-11 13:09:13');
INSERT INTO `Kebab_Shop` (`id`, `name`, `street`, `city`, `country`, `phone`, `kebab_average_price`, `creation_date`) VALUES
	(21, 'Nabab Kebab', 'Place centrale', 'Pontarlier', 'France', '0033 739 09 78', 7, '2017-10-11 13:09:13');
/*!40000 ALTER TABLE `Kebab_Shop` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
