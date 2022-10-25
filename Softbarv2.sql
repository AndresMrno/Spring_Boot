-- MariaDB dump 10.19  Distrib 10.4.25-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: softbarv2
-- ------------------------------------------------------
-- Server version	10.4.25-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `canchas`
--

DROP TABLE IF EXISTS `canchas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canchas` (
  `id_cancha` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_cancha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canchas`
--

LOCK TABLES `canchas` WRITE;
/*!40000 ALTER TABLE `canchas` DISABLE KEYS */;
/*!40000 ALTER TABLE `canchas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compras` (
  `id_compra` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) DEFAULT NULL,
  `fecha_compra` datetime(6) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_compra`),
  KEY `FK2f8u2ilf4ui6gktkvpkfc4j7t` (`id_producto`),
  KEY `FKkypgd762ocsq30thp7sxxhd20` (`id_proveedor`),
  CONSTRAINT `FK2f8u2ilf4ui6gktkvpkfc4j7t` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  CONSTRAINT `FKkypgd762ocsq30thp7sxxhd20` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domicilios`
--

DROP TABLE IF EXISTS `domicilios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domicilios` (
  `id_domicilio` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_entrega` datetime(6) DEFAULT NULL,
  `hora` int(11) DEFAULT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_domicilio`),
  KEY `FKtoa54s45iyhdiujcuc74ftknr` (`id_pedido`),
  KEY `FK1kugkllltbsxs3nobefh5eywu` (`id_usuario`),
  CONSTRAINT `FK1kugkllltbsxs3nobefh5eywu` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `FKtoa54s45iyhdiujcuc74ftknr` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domicilios`
--

LOCK TABLES `domicilios` WRITE;
/*!40000 ALTER TABLE `domicilios` DISABLE KEYS */;
/*!40000 ALTER TABLE `domicilios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pago`
--

DROP TABLE IF EXISTS `formas_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formas_pago` (
  `id_formas` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_forma` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_formas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pago`
--

LOCK TABLES `formas_pago` WRITE;
/*!40000 ALTER TABLE `formas_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `formas_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventarios`
--

DROP TABLE IF EXISTS `inventarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventarios` (
  `id_inventario` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) DEFAULT NULL,
  `fecha_ingreso` datetime(6) DEFAULT NULL,
  `fecha_vencimiento` datetime(6) DEFAULT NULL,
  `nota` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_inventario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventarios`
--

LOCK TABLES `inventarios` WRITE;
/*!40000 ALTER TABLE `inventarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago` (
  `id_pago` int(11) NOT NULL AUTO_INCREMENT,
  `id_formas` int(11) DEFAULT NULL,
  `id_venta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `FK588epr6msgmkme048m77jt68q` (`id_formas`),
  KEY `FKe6331sqv9mdmgtl72rdix1ncw` (`id_venta`),
  CONSTRAINT `FK588epr6msgmkme048m77jt68q` FOREIGN KEY (`id_formas`) REFERENCES `formas_pago` (`id_formas`),
  CONSTRAINT `FKe6331sqv9mdmgtl72rdix1ncw` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) DEFAULT NULL,
  `fecha_pedido` datetime(6) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `id_categoria_fk` int(11) DEFAULT NULL,
  `id_compra` int(11) DEFAULT NULL,
  `id_pedido_fk` int(11) DEFAULT NULL,
  `id_producto_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `FK1yukayxlcva6vwoktivubfsbs` (`id_categoria_fk`),
  KEY `FKm4u1us9i6m8rsm28fnqa28u87` (`id_compra`),
  KEY `FKc2kr7ukgm0ju82xy39cf4g9c8` (`id_pedido_fk`),
  KEY `FKedwf6sd85hxicak67b7t5qp6t` (`id_producto_fk`),
  CONSTRAINT `FK1yukayxlcva6vwoktivubfsbs` FOREIGN KEY (`id_categoria_fk`) REFERENCES `categorias` (`id_categoria`),
  CONSTRAINT `FKc2kr7ukgm0ju82xy39cf4g9c8` FOREIGN KEY (`id_pedido_fk`) REFERENCES `pedidos` (`id_pedido`),
  CONSTRAINT `FKedwf6sd85hxicak67b7t5qp6t` FOREIGN KEY (`id_producto_fk`) REFERENCES `inventarios` (`id_inventario`),
  CONSTRAINT `FKm4u1us9i6m8rsm28fnqa28u87` FOREIGN KEY (`id_compra`) REFERENCES `compras` (`id_compra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `articulo` varchar(255) DEFAULT NULL,
  `nombre_provedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservas` (
  `id_reserva` int(11) NOT NULL AUTO_INCREMENT,
  `numero_persona` int(11) DEFAULT NULL,
  `fecha_reserva` datetime(6) DEFAULT NULL,
  `horas` int(11) DEFAULT NULL,
  `id_cancha` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `FK72uf8hrj1c62yfpu49kwlniel` (`id_cancha`),
  CONSTRAINT `FK72uf8hrj1c62yfpu49kwlniel` FOREIGN KEY (`id_cancha`) REFERENCES `canchas` (`id_cancha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `nombres_rol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apellido` varchar(50) DEFAULT NULL,
  `contraseña` varchar(50) DEFAULT NULL,
  `correo_electronico` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `identificacion` varchar(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `id_rol_usuario_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbilgun7nm53fl91vp96qb3a3r` (`id_rol_usuario_fk`),
  CONSTRAINT `FKbilgun7nm53fl91vp96qb3a3r` FOREIGN KEY (`id_rol_usuario_fk`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL AUTO_INCREMENT,
  `valor_total` int(11) DEFAULT NULL,
  `id_domicilio` int(11) DEFAULT NULL,
  `id_reserva` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `FK4e2a02q86wya967q88yvx4sa3` (`id_domicilio`),
  KEY `FKm8hpg3iwnwo9r0f7swtl7u7mw` (`id_reserva`),
  CONSTRAINT `FK4e2a02q86wya967q88yvx4sa3` FOREIGN KEY (`id_domicilio`) REFERENCES `domicilios` (`id_domicilio`),
  CONSTRAINT `FKm8hpg3iwnwo9r0f7swtl7u7mw` FOREIGN KEY (`id_reserva`) REFERENCES `reservas` (`id_reserva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-25  4:36:51
