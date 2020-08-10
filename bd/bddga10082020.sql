-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.30-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for dga
CREATE DATABASE IF NOT EXISTS `dga` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dga`;

-- Dumping structure for table dga.dgme
CREATE TABLE IF NOT EXISTS `dgme` (
  `id_dgme` int(11) NOT NULL AUTO_INCREMENT,
  `tran_id` int(11) DEFAULT NULL,
  `placa` varchar(50) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `caseta` varchar(50) DEFAULT NULL,
  `movimiento` int(11) DEFAULT NULL,
  `condicion_placa` int(11) DEFAULT NULL,
  `condicion_transportista` int(11) DEFAULT NULL,
  `nombre_transportista` varchar(50) DEFAULT NULL,
  `tipo_documento_transportista` varchar(50) DEFAULT NULL,
  `documento_transportista` varchar(50) DEFAULT NULL,
  `nacionalidad_transportista` varchar(50) DEFAULT NULL,
  `error_descripcion` varchar(50) DEFAULT NULL,
  `resultado` int(11) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_dgme`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table dga.dgme: ~2 rows (approximately)
/*!40000 ALTER TABLE `dgme` DISABLE KEYS */;
INSERT INTO `dgme` (`id_dgme`, `tran_id`, `placa`, `fecha`, `caseta`, `movimiento`, `condicion_placa`, `condicion_transportista`, `nombre_transportista`, `tipo_documento_transportista`, `documento_transportista`, `nacionalidad_transportista`, `error_descripcion`, `resultado`, `message`) VALUES
	(1, 10, 'PL00120', '2020-08-10', '4', 1, 1, 1, 'JUAN PEREZ', 'DNI', '2020200', 'SALVADORENIO', 'Sin error', 1, 'Successful'),
	(2, 11, 'PL00108', '2020-08-10', '3', 2, 1, 1, 'MARCUS ANTONIO', 'DNI', '2020201', 'GUATEMALTECO', 'Sin error', 1, 'Successful');
/*!40000 ALTER TABLE `dgme` ENABLE KEYS */;

-- Dumping structure for table dga.duca
CREATE TABLE IF NOT EXISTS `duca` (
  `ID_DUCAS` int(11) NOT NULL AUTO_INCREMENT,
  `DOC_TYP` varchar(200) DEFAULT NULL,
  `REF_YER` int(11) DEFAULT NULL,
  `CUO_COD` varchar(200) NOT NULL,
  `REG_SER` varchar(200) DEFAULT NULL,
  `REG_NBR` varchar(200) DEFAULT NULL,
  `GDS_WGT` decimal(10,2) DEFAULT NULL,
  `CUO_MRK1` varchar(200) DEFAULT NULL,
  `CUO_MRK2` varchar(200) DEFAULT NULL,
  `GDS_CNT1` varchar(200) DEFAULT NULL,
  `GDS_CNT2` varchar(200) DEFAULT NULL,
  `DRV_IDE` varchar(200) DEFAULT NULL,
  `TRA_PLA_NBR` varchar(200) DEFAULT NULL,
  `TLR_PLA_N` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_DUCAS`),
  KEY `FK_duca_transporte` (`TRA_PLA_NBR`),
  CONSTRAINT `FK_duca_transporte` FOREIGN KEY (`TRA_PLA_NBR`) REFERENCES `media_info` (`TRA_PLA_NBR`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table dga.duca: ~5 rows (approximately)
/*!40000 ALTER TABLE `duca` DISABLE KEYS */;
INSERT INTO `duca` (`ID_DUCAS`, `DOC_TYP`, `REF_YER`, `CUO_COD`, `REG_SER`, `REG_NBR`, `GDS_WGT`, `CUO_MRK1`, `CUO_MRK2`, `GDS_CNT1`, `GDS_CNT2`, `DRV_IDE`, `TRA_PLA_NBR`, `TLR_PLA_N`) VALUES
	(1, 'DUCAF', 2020, '05', '3', '168', 3.00, 'CUOMARK1', 'CUOMARK2', 'CONTAINER1', 'CONTAINER2', '0000000-1', 'PL00120', 'TRLPLA1'),
	(2, 'DUCAT', 2020, '05', '"1",Km. 11.5 Carretera Panamericana, San Bartolo, Ilopango, El Salvador, C.A.', '95', 1489.99, 'CUOMARK1', 'CUOMARK2', 'CONTAINER1', 'CONTAINER2', '0000000-1', 'PL00120', 'TRLPLA1'),
	(3, 'DUCAT', 3, '05', '3', '164', 1005.99, 'CUOMARK1', 'CUOMARK2', 'CONTAINER1', 'CONTAINER2', '0000000-1', 'PL00120', 'TRLPLA1'),
	(4, 'DUCAT', 2020, '05', '4', '465', 1790.99, 'CUOMARK1', 'CUOMARK2', 'CONTAINER1', 'CONTAINER2', '0000000-1', 'PL00120', 'TRLPLA1'),
	(5, 'DUCAT', 2020, '05', '4', '465', 1790.99, 'CUOMARK1', 'CUOMARK2', 'CONTAINER1', 'CONTAINER2', '0000000-1', 'PL00808', 'TRLPLA1');
/*!40000 ALTER TABLE `duca` ENABLE KEYS */;

-- Dumping structure for table dga.funcional_error
CREATE TABLE IF NOT EXISTS `funcional_error` (
  `id_funcional_error` int(11) NOT NULL AUTO_INCREMENT,
  `id_media_info` int(11) DEFAULT NULL,
  `FLD_NAM` varchar(300) DEFAULT NULL,
  `ERR_COD` varchar(300) DEFAULT NULL,
  `ERR_DSC` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_funcional_error`),
  KEY `FK_funcional_error_media_info` (`id_media_info`),
  CONSTRAINT `FK_funcional_error_media_info` FOREIGN KEY (`id_media_info`) REFERENCES `media_info` (`id_media_info`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table dga.funcional_error: ~0 rows (approximately)
/*!40000 ALTER TABLE `funcional_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcional_error` ENABLE KEYS */;

-- Dumping structure for table dga.mag
CREATE TABLE IF NOT EXISTS `mag` (
  `id_mag` int(11) NOT NULL AUTO_INCREMENT,
  `no_duca` varchar(50) DEFAULT NULL,
  `error_descripcion` varchar(200) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `tipo_mercaderia` int(11) DEFAULT NULL,
  `mc_destino` int(11) DEFAULT NULL,
  `motivo_destino` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mag`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table dga.mag: ~6 rows (approximately)
/*!40000 ALTER TABLE `mag` DISABLE KEYS */;
INSERT INTO `mag` (`id_mag`, `no_duca`, `error_descripcion`, `estado`, `tipo_mercaderia`, `mc_destino`, `motivo_destino`) VALUES
	(1, 'D001', 'Sin error', 1, 1, 2, 'TRASLADO DE MERCARCIA'),
	(2, 'D002', 'Sin error', 2, 2, 5, 'DEVOLUCION DE MERCADERIA'),
	(3, 'D003', 'Sin error', 4, 5, 8, 'COMPRA DE MERCADERIA'),
	(4, 'D004', 'Sin error', 45, 54, 34, 'TRASLADO'),
	(5, 'D005', 'Sin error', 34, 23, 44, 'VENTA'),
	(6, 'D006', 'Sin error', 98, 78, 7, 'COMPRA');
/*!40000 ALTER TABLE `mag` ENABLE KEYS */;

-- Dumping structure for table dga.media_info
CREATE TABLE IF NOT EXISTS `media_info` (
  `id_media_info` int(11) NOT NULL AUTO_INCREMENT,
  `TRA_PLA_NBR` varchar(200) NOT NULL,
  `Result` varchar(300) DEFAULT NULL,
  `error_code` int(11) DEFAULT NULL,
  `error_description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_media_info`) USING BTREE,
  KEY `TRA_PLA_NBR` (`TRA_PLA_NBR`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table dga.media_info: ~2 rows (approximately)
/*!40000 ALTER TABLE `media_info` DISABLE KEYS */;
INSERT INTO `media_info` (`id_media_info`, `TRA_PLA_NBR`, `Result`, `error_code`, `error_description`) VALUES
	(1, 'PL00120', 'OK: Respuesta exitosa', 3, 'Ok, sin error encontrados'),
	(2, 'PL00808', 'OK: Respuesta exitosa', 3, 'Ok, sin error encontrados');
/*!40000 ALTER TABLE `media_info` ENABLE KEYS */;

-- Dumping structure for table dga.transporte
CREATE TABLE IF NOT EXISTS `transporte` (
  `id_transporte` int(11) NOT NULL AUTO_INCREMENT,
  `id_media_info` int(11) DEFAULT NULL,
  `TRA_PLA_NBR` varchar(200) NOT NULL,
  `BDR_CTY` varchar(200) DEFAULT NULL,
  `CHK_PNT` int(11) DEFAULT NULL,
  `CUO_COD` varchar(200) NOT NULL,
  `SCG_IDE` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_transporte`) USING BTREE,
  KEY `FK_transporte_media_info` (`id_media_info`),
  CONSTRAINT `FK_transporte_media_info` FOREIGN KEY (`id_media_info`) REFERENCES `media_info` (`id_media_info`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table dga.transporte: ~2 rows (approximately)
/*!40000 ALTER TABLE `transporte` DISABLE KEYS */;
INSERT INTO `transporte` (`id_transporte`, `id_media_info`, `TRA_PLA_NBR`, `BDR_CTY`, `CHK_PNT`, `CUO_COD`, `SCG_IDE`) VALUES
	(1, 1, 'PL00120', 'GT', 0, '05', 25),
	(2, 2, 'PL00808', 'GT', 1, '09', 45);
/*!40000 ALTER TABLE `transporte` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
