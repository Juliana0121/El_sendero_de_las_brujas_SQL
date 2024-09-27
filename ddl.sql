-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ddl
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amuleto`
--

DROP TABLE IF EXISTS amuleto;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE amuleto (
  id_Amuleto int NOT NULL AUTO_INCREMENT,
  nombre varchar(255) NOT NULL,
  descripcion text NOT NULL,
  duracion int NOT NULL,
  PRIMARY KEY (id_Amuleto),
  UNIQUE KEY nombre (nombre)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amuleto`
--

LOCK TABLES amuleto WRITE;
/*!40000 ALTER TABLE amuleto DISABLE KEYS */;
/*!40000 ALTER TABLE amuleto ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amuleto_poder`
--

DROP TABLE IF EXISTS amuleto_poder;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE amuleto_poder (
  id_Amuleto_Poder int NOT NULL AUTO_INCREMENT,
  id_Amuleto int NOT NULL,
  id_Poder int NOT NULL,
  PRIMARY KEY (id_Amuleto_Poder),
  KEY fk_amuleto (id_Amuleto),
  KEY fk_ingredientePoder (id_Poder),
  CONSTRAINT fk_amuleto FOREIGN KEY (id_Amuleto) REFERENCES amuleto (id_Amuleto),
  CONSTRAINT fk_ingredientePoder FOREIGN KEY (id_Poder) REFERENCES poder (id_Poder)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amuleto_poder`
--

LOCK TABLES amuleto_poder WRITE;
/*!40000 ALTER TABLE amuleto_poder DISABLE KEYS */;
/*!40000 ALTER TABLE amuleto_poder ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antiguedad`
--

DROP TABLE IF EXISTS antiguedad;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE antiguedad (
  id_Antiguedad int NOT NULL AUTO_INCREMENT,
  tipo varchar(255) NOT NULL,
  PRIMARY KEY (id_Antiguedad),
  UNIQUE KEY tipo (tipo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antiguedad`
--

LOCK TABLES antiguedad WRITE;
/*!40000 ALTER TABLE antiguedad DISABLE KEYS */;
/*!40000 ALTER TABLE antiguedad ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antiguedad_clan`
--

DROP TABLE IF EXISTS antiguedad_clan;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE antiguedad_clan (
  id_Antiguedad_Clan int NOT NULL AUTO_INCREMENT,
  id_Antiguedad int NOT NULL,
  id_Clan int NOT NULL,
  PRIMARY KEY (id_Antiguedad_Clan),
  KEY fk_antiguedad (id_Antiguedad),
  KEY fk_clanAnt (id_Clan),
  CONSTRAINT fk_antiguedad FOREIGN KEY (id_Antiguedad) REFERENCES antiguedad (id_Antiguedad),
  CONSTRAINT fk_clanAnt FOREIGN KEY (id_Clan) REFERENCES clan (id_Clan)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antiguedad_clan`
--

LOCK TABLES antiguedad_clan WRITE;
/*!40000 ALTER TABLE antiguedad_clan DISABLE KEYS */;
/*!40000 ALTER TABLE antiguedad_clan ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antiguedad_tipo_bruja`
--

DROP TABLE IF EXISTS antiguedad_tipo_bruja;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE antiguedad_tipo_bruja (
  id_Antiguedad_Tipo_Bruja int NOT NULL AUTO_INCREMENT,
  id_Antiguedad int NOT NULL,
  id_Tipo_Bruja int NOT NULL,
  PRIMARY KEY (id_Antiguedad_Tipo_Bruja),
  KEY fk_antiguedadTipo (id_Antiguedad),
  KEY fk_tipo_Bruja_Ant (id_Tipo_Bruja),
  CONSTRAINT fk_antiguedadTipo FOREIGN KEY (id_Antiguedad) REFERENCES antiguedad (id_Antiguedad),
  CONSTRAINT fk_tipo_Bruja_Ant FOREIGN KEY (id_Tipo_Bruja) REFERENCES tipo_bruja (id_Tipo_Bruja)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antiguedad_tipo_bruja`
--

LOCK TABLES antiguedad_tipo_bruja WRITE;
/*!40000 ALTER TABLE antiguedad_tipo_bruja DISABLE KEYS */;
/*!40000 ALTER TABLE antiguedad_tipo_bruja ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antiguedad_tipo_magia`
--

DROP TABLE IF EXISTS antiguedad_tipo_magia;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE antiguedad_tipo_magia (
  id_Antiguedad_Tipo_Magia int NOT NULL AUTO_INCREMENT,
  id_Antiguedad int NOT NULL,
  id_Tipo_Magia int NOT NULL,
  PRIMARY KEY (id_Antiguedad_Tipo_Magia),
  KEY fk_antiguedadMagia (id_Antiguedad),
  KEY fk_tipo_Magia_Ant (id_Tipo_Magia),
  CONSTRAINT fk_antiguedadMagia FOREIGN KEY (id_Antiguedad) REFERENCES antiguedad (id_Antiguedad),
  CONSTRAINT fk_tipo_Magia_Ant FOREIGN KEY (id_Tipo_Magia) REFERENCES tipo_magia (id_Tipo_Magia)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antiguedad_tipo_magia`
--

LOCK TABLES antiguedad_tipo_magia WRITE;
/*!40000 ALTER TABLE antiguedad_tipo_magia DISABLE KEYS */;
/*!40000 ALTER TABLE antiguedad_tipo_magia ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bruja`
--

DROP TABLE IF EXISTS bruja;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE bruja (
  id_Bruja int NOT NULL AUTO_INCREMENT,
  nombre text NOT NULL,
  apellido text NOT NULL,
  fecha_Nacimiento date DEFAULT NULL,
  id_Respeto int NOT NULL,
  id_Tipo_Bruja int NOT NULL,
  id_Clan int NOT NULL,
  id_Espiritu_Familiar int NOT NULL,
  PRIMARY KEY (id_Bruja),
  KEY fk_respetoBruja (id_Respeto),
  KEY fk_tipo_Bruja (id_Tipo_Bruja),
  KEY fk_clan (id_Clan),
  KEY fk_espiritu_Familiar (id_Espiritu_Familiar),
  CONSTRAINT fk_clan FOREIGN KEY (id_Clan) REFERENCES clan (id_Clan),
  CONSTRAINT fk_espiritu_Familiar FOREIGN KEY (id_Espiritu_Familiar) REFERENCES espiritu_familiar (id_Espiritu_Familiar),
  CONSTRAINT fk_respetoBruja FOREIGN KEY (id_Respeto) REFERENCES respeto (id_Respeto),
  CONSTRAINT fk_tipo_Bruja FOREIGN KEY (id_Tipo_Bruja) REFERENCES tipo_bruja (id_Tipo_Bruja)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bruja`
--

LOCK TABLES bruja WRITE;
/*!40000 ALTER TABLE bruja DISABLE KEYS */;
/*!40000 ALTER TABLE bruja ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bruja_amuleto`
--

DROP TABLE IF EXISTS bruja_amuleto;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE bruja_amuleto (
  id_Bruja_Amuleto int NOT NULL AUTO_INCREMENT,
  id_Bruja int NOT NULL,
  id_Amuleto int NOT NULL,
  PRIMARY KEY (id_Bruja_Amuleto),
  KEY fk_brujaAmuleto (id_Bruja),
  KEY fk_amuletoBruja (id_Amuleto),
  CONSTRAINT fk_amuletoBruja FOREIGN KEY (id_Amuleto) REFERENCES amuleto (id_Amuleto),
  CONSTRAINT fk_brujaAmuleto FOREIGN KEY (id_Bruja) REFERENCES bruja (id_Bruja)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bruja_amuleto`
--

LOCK TABLES bruja_amuleto WRITE;
/*!40000 ALTER TABLE bruja_amuleto DISABLE KEYS */;
/*!40000 ALTER TABLE bruja_amuleto ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bruja_conjuro`
--

DROP TABLE IF EXISTS bruja_conjuro;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE bruja_conjuro (
  id_Bruja_Conjuro int NOT NULL AUTO_INCREMENT,
  id_Bruja int NOT NULL,
  id_Conjuro int NOT NULL,
  PRIMARY KEY (id_Bruja_Conjuro),
  KEY fk_brujaConjuro (id_Bruja),
  KEY fk_conjuro (id_Conjuro),
  CONSTRAINT fk_brujaConjuro FOREIGN KEY (id_Bruja) REFERENCES bruja (id_Bruja),
  CONSTRAINT fk_conjuro FOREIGN KEY (id_Conjuro) REFERENCES conjuro (id_Conjuro)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bruja_conjuro`
--

LOCK TABLES bruja_conjuro WRITE;
/*!40000 ALTER TABLE bruja_conjuro DISABLE KEYS */;
/*!40000 ALTER TABLE bruja_conjuro ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bruja_hechizo`
--

DROP TABLE IF EXISTS bruja_hechizo;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE bruja_hechizo (
  id_Bruja_Hechizo int NOT NULL AUTO_INCREMENT,
  id_Bruja int NOT NULL,
  id_Hechizo int NOT NULL,
  PRIMARY KEY (id_Bruja_Hechizo),
  KEY fk_bruja (id_Bruja),
  KEY fk_hechizo (id_Hechizo),
  CONSTRAINT fk_bruja FOREIGN KEY (id_Bruja) REFERENCES bruja (id_Bruja),
  CONSTRAINT fk_hechizo FOREIGN KEY (id_Hechizo) REFERENCES hechizo (id_Hechizo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bruja_hechizo`
--

LOCK TABLES bruja_hechizo WRITE;
/*!40000 ALTER TABLE bruja_hechizo DISABLE KEYS */;
/*!40000 ALTER TABLE bruja_hechizo ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bruja_poder`
--

DROP TABLE IF EXISTS bruja_poder;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE bruja_poder (
  id_Bruja_Poder int NOT NULL AUTO_INCREMENT,
  id_Bruja int NOT NULL,
  id_Poder int NOT NULL,
  PRIMARY KEY (id_Bruja_Poder),
  KEY fk_brujaPoder (id_Bruja),
  KEY fk_poder_Bruja (id_Poder),
  CONSTRAINT fk_brujaPoder FOREIGN KEY (id_Bruja) REFERENCES bruja (id_Bruja),
  CONSTRAINT fk_poder_Bruja FOREIGN KEY (id_Poder) REFERENCES poder (id_Poder)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bruja_poder`
--

LOCK TABLES bruja_poder WRITE;
/*!40000 ALTER TABLE bruja_poder DISABLE KEYS */;
/*!40000 ALTER TABLE bruja_poder ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clan`
--

DROP TABLE IF EXISTS clan;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE clan (
  id_Clan int NOT NULL AUTO_INCREMENT,
  nombre varchar(255) NOT NULL,
  descripcion text NOT NULL,
  id_Respeto int NOT NULL,
  PRIMARY KEY (id_Clan),
  UNIQUE KEY nombre (nombre),
  KEY fk_respeto (id_Respeto),
  CONSTRAINT fk_respeto FOREIGN KEY (id_Respeto) REFERENCES respeto (id_Respeto)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clan`
--

LOCK TABLES clan WRITE;
/*!40000 ALTER TABLE clan DISABLE KEYS */;
/*!40000 ALTER TABLE clan ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concentracion`
--

DROP TABLE IF EXISTS concentracion;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE concentracion (
  id_Concentracion int NOT NULL AUTO_INCREMENT,
  concentracion varchar(255) NOT NULL,
  PRIMARY KEY (id_Concentracion),
  UNIQUE KEY concentracion (concentracion)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concentracion`
--

LOCK TABLES concentracion WRITE;
/*!40000 ALTER TABLE concentracion DISABLE KEYS */;
/*!40000 ALTER TABLE concentracion ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conjuro`
--

DROP TABLE IF EXISTS conjuro;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE conjuro (
  id_Conjuro int NOT NULL AUTO_INCREMENT,
  nombre varchar(255) NOT NULL,
  descripcion text NOT NULL,
  PRIMARY KEY (id_Conjuro),
  UNIQUE KEY nombre (nombre)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conjuro`
--

LOCK TABLES conjuro WRITE;
/*!40000 ALTER TABLE conjuro DISABLE KEYS */;
/*!40000 ALTER TABLE conjuro ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conjuro_consecuencia`
--

DROP TABLE IF EXISTS conjuro_consecuencia;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE conjuro_consecuencia (
  id_Conjuro_Consecuencia int NOT NULL AUTO_INCREMENT,
  id_Conjuro int NOT NULL,
  id_Consecuencia int NOT NULL,
  PRIMARY KEY (id_Conjuro_Consecuencia),
  KEY fk_conjuro_Cons (id_Conjuro),
  KEY fk_consecuencia (id_Consecuencia),
  CONSTRAINT fk_conjuro_Cons FOREIGN KEY (id_Conjuro) REFERENCES conjuro (id_Conjuro),
  CONSTRAINT fk_consecuencia FOREIGN KEY (id_Consecuencia) REFERENCES consecuencia (id_Consecuencia)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conjuro_consecuencia`
--

LOCK TABLES conjuro_consecuencia WRITE;
/*!40000 ALTER TABLE conjuro_consecuencia DISABLE KEYS */;
/*!40000 ALTER TABLE conjuro_consecuencia ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consecuencia`
--

DROP TABLE IF EXISTS consecuencia;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE consecuencia (
  id_Consecuencia int NOT NULL AUTO_INCREMENT,
  consecuencia varchar(255) NOT NULL,
  PRIMARY KEY (id_Consecuencia),
  UNIQUE KEY consecuencia (consecuencia)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consecuencia`
--

LOCK TABLES consecuencia WRITE;
/*!40000 ALTER TABLE consecuencia DISABLE KEYS */;
/*!40000 ALTER TABLE consecuencia ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `efecto`
--

DROP TABLE IF EXISTS efecto;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE efecto (
  id_Efecto int NOT NULL AUTO_INCREMENT,
  efecto varchar(255) NOT NULL,
  PRIMARY KEY (id_Efecto),
  UNIQUE KEY efecto (efecto)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `efecto`
--

LOCK TABLES efecto WRITE;
/*!40000 ALTER TABLE efecto DISABLE KEYS */;
/*!40000 ALTER TABLE efecto ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `espiritu_familiar`
--

DROP TABLE IF EXISTS espiritu_familiar;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE espiritu_familiar (
  id_Espiritu_Familiar int NOT NULL AUTO_INCREMENT,
  nombre varchar(255) NOT NULL,
  descripcion text NOT NULL,
  id_Tipo_Espiritu_Familiar int NOT NULL,
  PRIMARY KEY (id_Espiritu_Familiar),
  UNIQUE KEY nombre (nombre),
  KEY fk_tipo_Espiritu_Familiar (id_Tipo_Espiritu_Familiar),
  CONSTRAINT fk_tipo_Espiritu_Familiar FOREIGN KEY (id_Tipo_Espiritu_Familiar) REFERENCES tipo_espiritu_familiar (id_Tipo_Espiritu_Familiar)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `espiritu_familiar`
--

LOCK TABLES espiritu_familiar WRITE;
/*!40000 ALTER TABLE espiritu_familiar DISABLE KEYS */;
/*!40000 ALTER TABLE espiritu_familiar ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hechizo`
--

DROP TABLE IF EXISTS hechizo;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE hechizo (
  id_Hechizo int NOT NULL AUTO_INCREMENT,
  nombre varchar(255) NOT NULL,
  descripcion text NOT NULL,
  cantidad_Magia int NOT NULL,
  id_Concentracion int NOT NULL,
  PRIMARY KEY (id_Hechizo),
  UNIQUE KEY nombre (nombre),
  KEY fk_concentracion (id_Concentracion),
  CONSTRAINT fk_concentracion FOREIGN KEY (id_Concentracion) REFERENCES concentracion (id_Concentracion)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hechizo`
--

LOCK TABLES hechizo WRITE;
/*!40000 ALTER TABLE hechizo DISABLE KEYS */;
/*!40000 ALTER TABLE hechizo ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingrediente`
--

DROP TABLE IF EXISTS ingrediente;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE ingrediente (
  id_Ingrediente int NOT NULL AUTO_INCREMENT,
  nombre varchar(255) NOT NULL,
  descripcion text NOT NULL,
  PRIMARY KEY (id_Ingrediente),
  UNIQUE KEY nombre (nombre)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingrediente`
--

LOCK TABLES ingrediente WRITE;
/*!40000 ALTER TABLE ingrediente DISABLE KEYS */;
/*!40000 ALTER TABLE ingrediente ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pocion`
--

DROP TABLE IF EXISTS pocion;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE pocion (
  id_Pocion int NOT NULL AUTO_INCREMENT,
  nombre varchar(255) NOT NULL,
  descripcion text NOT NULL,
  PRIMARY KEY (id_Pocion),
  UNIQUE KEY nombre (nombre)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pocion`
--

LOCK TABLES pocion WRITE;
/*!40000 ALTER TABLE pocion DISABLE KEYS */;
/*!40000 ALTER TABLE pocion ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pocion_bruja`
--

DROP TABLE IF EXISTS pocion_bruja;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE pocion_bruja (
  id_Pocion_Bruja int NOT NULL AUTO_INCREMENT,
  id_Pocion int NOT NULL,
  id_Bruja int NOT NULL,
  PRIMARY KEY (id_Pocion_Bruja),
  KEY fk_pocion_bruja (id_Pocion),
  KEY fk_bruja_pocion (id_Bruja),
  CONSTRAINT fk_bruja_pocion FOREIGN KEY (id_Bruja) REFERENCES bruja (id_Bruja),
  CONSTRAINT fk_pocion_bruja FOREIGN KEY (id_Pocion) REFERENCES pocion (id_Pocion)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pocion_bruja`
--

LOCK TABLES pocion_bruja WRITE;
/*!40000 ALTER TABLE pocion_bruja DISABLE KEYS */;
/*!40000 ALTER TABLE pocion_bruja ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pocion_ingrediente`
--

DROP TABLE IF EXISTS pocion_ingrediente;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE pocion_ingrediente (
  id_Pocion_Ingrediente int NOT NULL AUTO_INCREMENT,
  id_Pocion int NOT NULL,
  id_Ingrediente int NOT NULL,
  PRIMARY KEY (id_Pocion_Ingrediente),
  KEY fk_pocion (id_Pocion),
  KEY fk_ingrediente (id_Ingrediente),
  CONSTRAINT fk_ingrediente FOREIGN KEY (id_Ingrediente) REFERENCES ingrediente (id_Ingrediente),
  CONSTRAINT fk_pocion FOREIGN KEY (id_Pocion) REFERENCES pocion (id_Pocion)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pocion_ingrediente`
--

LOCK TABLES pocion_ingrediente WRITE;
/*!40000 ALTER TABLE pocion_ingrediente DISABLE KEYS */;
/*!40000 ALTER TABLE pocion_ingrediente ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poder`
--

DROP TABLE IF EXISTS poder;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE poder (
  id_Poder int NOT NULL AUTO_INCREMENT,
  nombre varchar(255) NOT NULL,
  descripcion varchar(255) NOT NULL,
  cantidad_Magia int NOT NULL,
  PRIMARY KEY (id_Poder),
  UNIQUE KEY nombre (nombre),
  UNIQUE KEY descripcion (descripcion)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poder`
--

LOCK TABLES poder WRITE;
/*!40000 ALTER TABLE poder DISABLE KEYS */;
/*!40000 ALTER TABLE poder ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poder_efecto`
--

DROP TABLE IF EXISTS poder_efecto;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE poder_efecto (
  id_Poder_Efecto int NOT NULL AUTO_INCREMENT,
  id_Poder int NOT NULL,
  id_Efecto int NOT NULL,
  PRIMARY KEY (id_Poder_Efecto),
  KEY fk_poderEfecto (id_Poder),
  KEY fk_efecto (id_Efecto),
  CONSTRAINT fk_efecto FOREIGN KEY (id_Efecto) REFERENCES efecto (id_Efecto),
  CONSTRAINT fk_poderEfecto FOREIGN KEY (id_Poder) REFERENCES poder (id_Poder)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poder_efecto`
--

LOCK TABLES poder_efecto WRITE;
/*!40000 ALTER TABLE poder_efecto DISABLE KEYS */;
/*!40000 ALTER TABLE poder_efecto ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poder_tipo_magia`
--

DROP TABLE IF EXISTS poder_tipo_magia;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE poder_tipo_magia (
  id_Poder_Tipo_Magia int NOT NULL AUTO_INCREMENT,
  id_Poder int NOT NULL,
  id_Tipo_Magia int NOT NULL,
  PRIMARY KEY (id_Poder_Tipo_Magia),
  KEY fk_poder (id_Poder),
  KEY fk_tipo_Magia (id_Tipo_Magia),
  CONSTRAINT fk_poder FOREIGN KEY (id_Poder) REFERENCES poder (id_Poder),
  CONSTRAINT fk_tipo_Magia FOREIGN KEY (id_Tipo_Magia) REFERENCES tipo_magia (id_Tipo_Magia)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poder_tipo_magia`
--

LOCK TABLES poder_tipo_magia WRITE;
/*!40000 ALTER TABLE poder_tipo_magia DISABLE KEYS */;
/*!40000 ALTER TABLE poder_tipo_magia ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respeto`
--

DROP TABLE IF EXISTS respeto;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE respeto (
  id_Respeto int NOT NULL AUTO_INCREMENT,
  respeto varchar(255) NOT NULL,
  PRIMARY KEY (id_Respeto),
  UNIQUE KEY respeto (respeto)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respeto`
--

LOCK TABLES respeto WRITE;
/*!40000 ALTER TABLE respeto DISABLE KEYS */;
/*!40000 ALTER TABLE respeto ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_bruja`
--

DROP TABLE IF EXISTS tipo_bruja;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE tipo_bruja (
  id_Tipo_Bruja int NOT NULL AUTO_INCREMENT,
  tipo varchar(255) NOT NULL,
  descripcion text NOT NULL,
  capacidad_Maxima int NOT NULL,
  PRIMARY KEY (id_Tipo_Bruja),
  UNIQUE KEY tipo (tipo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_bruja`
--

LOCK TABLES tipo_bruja WRITE;
/*!40000 ALTER TABLE tipo_bruja DISABLE KEYS */;
/*!40000 ALTER TABLE tipo_bruja ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_espiritu_familiar`
--

DROP TABLE IF EXISTS tipo_espiritu_familiar;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE tipo_espiritu_familiar (
  id_Tipo_Espiritu_Familiar int NOT NULL AUTO_INCREMENT,
  tipo varchar(255) NOT NULL,
  PRIMARY KEY (id_Tipo_Espiritu_Familiar),
  UNIQUE KEY tipo (tipo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_espiritu_familiar`
--

LOCK TABLES tipo_espiritu_familiar WRITE;
/*!40000 ALTER TABLE tipo_espiritu_familiar DISABLE KEYS */;
/*!40000 ALTER TABLE tipo_espiritu_familiar ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_magia`
--

DROP TABLE IF EXISTS tipo_magia;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE tipo_magia (
  id_Tipo_Magia int NOT NULL AUTO_INCREMENT,
  nombre varchar(255) NOT NULL,
  descripcion text NOT NULL,
  PRIMARY KEY (id_Tipo_Magia),
  UNIQUE KEY nombre (nombre)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_magia`
--

LOCK TABLES tipo_magia WRITE;
/*!40000 ALTER TABLE tipo_magia DISABLE KEYS */;
/*!40000 ALTER TABLE tipo_magia ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-26 19:17:22
