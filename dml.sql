-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dml
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amuleto`
--

LOCK TABLES amuleto WRITE;
/*!40000 ALTER TABLE amuleto DISABLE KEYS */;
INSERT INTO amuleto VALUES (1,'Ojo de Horus','Protege contra el mal',100),(2,'Triskelion','Amplifica poderes naturales',50),(3,'Piedra filosofal','Otorga inmortalidad',-1),(4,'Ankh','Símbolo de vida eterna',1000),(5,'Amuleto de Samarkand','Protege contra magia',200),(6,'Estrella de David','Sello de protección',500),(7,'Mano de Fátima','Protege contra el mal de ojo',75),(8,'Trébol de cuatro hojas','Atrae la buena suerte',1),(9,'Ojo turco','Desvía energías negativas',30),(10,'Diente de tiburón','Proporciona coraje',25),(11,'Lágrima de fénix','Otorga resistencia al fuego',150),(12,'Medallón lunar','Amplifica poderes en luna llena',100),(13,'Corazón de dragón','Aumenta la fuerza física',300),(14,'Espejo de obsidiana','Refleja maldiciones',80),(15,'Pluma de grifo','Mejora la intuición',40),(16,'Gema del alma','Almacena energía mágica',500),(17,'Reloj de arena eterno','Manipula el tiempo personal',1000),(18,'Llave de los portales','Abre puertas dimensionales',250),(19,'Cristal de memoria','Almacena recuerdos',75),(20,'Escama de sirena','Permite respirar bajo el agua',60);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amuleto_poder`
--

LOCK TABLES amuleto_poder WRITE;
/*!40000 ALTER TABLE amuleto_poder DISABLE KEYS */;
INSERT INTO amuleto_poder VALUES (1,1,2),(2,1,5),(3,3,1),(4,2,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antiguedad`
--

LOCK TABLES antiguedad WRITE;
/*!40000 ALTER TABLE antiguedad DISABLE KEYS */;
INSERT INTO antiguedad VALUES (4,'Adepta'),(2,'Aprendiz'),(7,'Archmaga'),(3,'Iniciada'),(5,'Maestra'),(1,'Novicia'),(6,'Sabia');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antiguedad_clan`
--

LOCK TABLES antiguedad_clan WRITE;
/*!40000 ALTER TABLE antiguedad_clan DISABLE KEYS */;
INSERT INTO antiguedad_clan VALUES (1,6,1),(2,1,2),(3,1,3),(4,5,4),(5,2,3),(6,4,6),(7,6,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antiguedad_tipo_bruja`
--

LOCK TABLES antiguedad_tipo_bruja WRITE;
/*!40000 ALTER TABLE antiguedad_tipo_bruja DISABLE KEYS */;
INSERT INTO antiguedad_tipo_bruja VALUES (1,5,2),(2,3,2),(3,4,1),(4,6,9),(5,6,10),(6,1,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antiguedad_tipo_magia`
--

LOCK TABLES antiguedad_tipo_magia WRITE;
/*!40000 ALTER TABLE antiguedad_tipo_magia DISABLE KEYS */;
INSERT INTO antiguedad_tipo_magia VALUES (1,6,10),(2,4,10),(3,4,1),(4,5,1),(5,6,5),(6,4,6),(7,2,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bruja`
--

LOCK TABLES bruja WRITE;
/*!40000 ALTER TABLE bruja DISABLE KEYS */;
INSERT INTO bruja VALUES (1,'Hermione','Granger','1979-09-19',4,5,4,1),(2,'Wanda','Maximoff','1989-02-10',1,9,13,16),(3,'Sabrina','Spellman','2000-10-31',3,9,2,1),(4,'Willow','Rosenberg','1981-05-15',3,11,5,2),(5,'Bellatrix','Lestrange','1951-03-21',1,11,5,1),(6,'Zelda','Spellman','1960-12-01',4,9,2,1),(7,'Bonnie','Bennett','1993-02-05',3,15,3,12),(8,'Prue','Halliwell','1970-10-28',2,2,7,3),(9,'Agatha','Harkness','1692-06-13',1,11,9,1),(10,'Marie','Laveau','1801-09-10',4,3,12,15),(11,'Morganle','Fay','0500-01-01',2,5,9,13),(12,'Circe','Desconocido','1200-01-01',1,13,15,18),(13,'Serafina','Pekkal','1685-03-08',4,6,3,20),(14,'Jadis','Desconocido','1000-01-01',3,3,3,10),(15,'Elphaba','Thropp','1920-05-13',5,5,1,18),(16,'Maleficent','Desconocido','1360-06-06',1,11,20,19),(17,'Granny','Weatherwax','1926-10-31',3,16,4,14),(18,'Karnilla','Desconocido','0800-07-07',3,12,5,6),(19,'Ursula','Desconocido','1922-11-18',1,10,6,9),(20,'Melisandre','Desconocido','1870-12-25',3,2,5,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bruja_amuleto`
--

LOCK TABLES bruja_amuleto WRITE;
/*!40000 ALTER TABLE bruja_amuleto DISABLE KEYS */;
INSERT INTO bruja_amuleto VALUES (1,6,10),(2,4,15),(3,4,14),(4,5,18),(5,6,15),(6,2,6),(7,2,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bruja_conjuro`
--

LOCK TABLES bruja_conjuro WRITE;
/*!40000 ALTER TABLE bruja_conjuro DISABLE KEYS */;
INSERT INTO bruja_conjuro VALUES (1,6,1),(2,4,5),(3,4,8),(4,8,18),(5,16,15),(6,16,20),(7,20,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bruja_hechizo`
--

LOCK TABLES bruja_hechizo WRITE;
/*!40000 ALTER TABLE bruja_hechizo DISABLE KEYS */;
INSERT INTO bruja_hechizo VALUES (1,1,2),(2,1,5),(3,1,8),(4,2,8),(5,4,15),(6,4,20),(7,6,1),(8,10,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bruja_poder`
--

LOCK TABLES bruja_poder WRITE;
/*!40000 ALTER TABLE bruja_poder DISABLE KEYS */;
INSERT INTO bruja_poder VALUES (1,1,15),(2,1,20),(3,2,8),(4,3,8),(5,3,15),(6,3,20),(7,6,7),(8,8,7),(9,8,17),(10,12,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clan`
--

LOCK TABLES clan WRITE;
/*!40000 ALTER TABLE clan DISABLE KEYS */;
INSERT INTO clan VALUES (1,'Coven de la Luna Roja','Especialistas en magia lunar y rituales nocturnos',5),(2,'Hermandad de la Llama Eterna','Maestros del fuego y la alquimia',5),(3,'Círculo de la Tierra Verde','Druidas y protectores de la naturaleza',4),(4,'Orden del Crepúsculo','Expertos en magia del tiempo y dimensiones',5),(5,'Secta de las Sombras Susurrantes','Practicantes de magia oscura y necromancia',3),(6,'Gremio de los Tejedores de Sueños','Especialistas en manipulación de sueños y visiones',5),(7,'Concilio de las Aguas Profundas','Maestros de la magia acuática y del clima',5),(8,'Hermandad del Cristal Estelar','Astrólogos y canalizadores de energía cósmica',3),(9,'Círculo de la Espina de Rosa','Expertos en encantamientos y pociones de amor',1),(10,'Orden del Grimorio Sellado','Guardianes de conocimientos mágicos antiguos',5),(11,'Coven del Velo Rasgado','Especialistas en comunicación con espíritus',5),(12,'Hermandad de la Runa Arcana','Maestros en la escritura y magia de runa',2),(13,'secta del Caos Primordial','Manipuladores de las fuerzas del caos y el destino',1),(14,'Gremio de los Alquimistas Etéreos','Creadores de pociones y elixires místicos',2),(15,'Círculo de la Aurora Boreal','Canalizadores de energías celestiales y astrales',4),(16,'Orden de la Máscara de Jade','Ilusionistas y maestros del engaño',2),(17,'Coven de la Sangre Ancestral','Practicantes de magia de sangre y linaje',1),(18,'Hermandad del Árbol de la Vida','Guardianes del equilibrio natural y la sanación',3),(19,'Secta del Ojo que Todo lo Ve','Videntes y oráculos',5),(20,'Gremio de los Tejedores del Destino','Manipuladores del destino y la fortuna',5);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concentracion`
--

LOCK TABLES concentracion WRITE;
/*!40000 ALTER TABLE concentracion DISABLE KEYS */;
INSERT INTO concentracion VALUES (4,'Alta'),(2,'Baja'),(5,'Extrema'),(1,'Mínima'),(3,'Moderada');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conjuro`
--

LOCK TABLES conjuro WRITE;
/*!40000 ALTER TABLE conjuro DISABLE KEYS */;
INSERT INTO conjuro VALUES (1,'Protego','Crea un escudo mágico'),(2,'Incantation of Osiris','Revive a los muertos'),(3,'Barrier of Shadows','Crea una barrera de sombras'),(4,'Call of the Wild','Invoca animales salvajes'),(5,'Tempest\'s Fury','Desata una tormenta'),(6,'Mystic Binding','Ata a una criatura mágica'),(7,'Veil of Illusion','Crea una ilusión compleja'),(8,'Ethereal Gateway','Abre un portal a otro plano'),(9,'Siren\'s Song','Encanta con la voz'),(10,'Quantum Entanglement','Enlaza dos objetos mágicamente'),(11,'Chronos Reversal','Invierte el tiempo localmente'),(12,'Gaia\'s Embrace','Comunión con la tierra'),(13,'Spectral Chains','Invoca cadenas espectrales'),(14,'Mind\'s Eye','Otorga clarividencia'),(15,'Phoenix Rebirth','Resurrección temporal'),(16,'Lunar Blessing','Potencia magia lunar'),(17,'Solar Flare','Invoca una explosión solar'),(18,'Arcane Seal','Sella poderes mágicos'),(19,'Dreamweaver','Manipula sueños'),(20,'Chaos Unleashed','Desata energía caótica');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conjuro_consecuencia`
--

LOCK TABLES conjuro_consecuencia WRITE;
/*!40000 ALTER TABLE conjuro_consecuencia DISABLE KEYS */;
INSERT INTO conjuro_consecuencia VALUES (1,1,3),(2,1,2),(3,2,8),(4,10,8),(5,11,6),(6,13,2),(7,6,7),(8,1,4),(9,1,1),(10,12,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consecuencia`
--

LOCK TABLES consecuencia WRITE;
/*!40000 ALTER TABLE consecuencia DISABLE KEYS */;
INSERT INTO consecuencia VALUES (1,'Agotamiento mágico'),(4,'Alteración mental temporal'),(5,'Corrupción mágica'),(3,'Daño físico mayor'),(2,'Daño físico menor'),(6,'Invocación no deseada'),(8,'Maldición rebote'),(7,'Ruptura del velo dimensional');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `efecto`
--

LOCK TABLES efecto WRITE;
/*!40000 ALTER TABLE efecto DISABLE KEYS */;
INSERT INTO efecto VALUES (5,'Acumulativo'),(4,'Cíclico'),(2,'Duradero'),(1,'Instantáneo'),(3,'Permanente'),(6,'Retardado');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `espiritu_familiar`
--

LOCK TABLES espiritu_familiar WRITE;
/*!40000 ALTER TABLE espiritu_familiar DISABLE KEYS */;
INSERT INTO espiritu_familiar VALUES (1,'Nox','Gato negro que aumenta los poderes nocturnos',1),(2,'Ignis','Salamandra de fuego que potencia la piroquinesis',1),(3,'Aura','Colibrí que mejora la percepción extrasensorial',1),(4,'Umbra','Cuervo que facilita la comunicación con los muertos',1),(5,'Zephyr','Halcón que otorga habilidades de vuelo mejoradas',1),(6,'Luna','Lobo que amplifica los poderes en la noche',1),(7,'Gaia','Zorro que aumenta la conexión con la naturaleza',1),(8,'Aquilo','Delfín que mejora las habilidades acuáticas',1),(9,'Chronos','Búho que ayuda en la manipulación del tiempo',1),(10,'Lux','Fénix que potencia las habilidades de sanación',1),(11,'Terra','Topo que facilita la comunión con la tierra',1),(12,'Ventus','Águila que mejora el control sobre los vientos',1),(13,'Nymphaea','Libélula que aumenta la afinidad con las plantas',1),(14,'Fulgur','Serpiente eléctrica que potencia la electrokinesis',1),(15,'Nebula','Murciélago que mejora la ecolocalización mágica',1),(16,'Crystallum','Dragón de cristal que amplifica la energía mágica',1),(17,'Somnus','Mariposa que facilita la entrada en el mundo de los sueños',1),(18,'Speculum','Camaleón que mejora las habilidades de ilusión',1),(19,'Aether','Pegaso que facilita el viaje entre dimensiones',1),(20,'Anima','Conejo que aumenta la velocidad de regeneración mágica',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hechizo`
--

LOCK TABLES hechizo WRITE;
/*!40000 ALTER TABLE hechizo DISABLE KEYS */;
INSERT INTO hechizo VALUES (1,'Wingardium Leviosa','Hace levitar objetos',2,1),(2,'Chaos Magic','Altera la realidad',10,5),(3,'Glamour','Cambia la apariencia',3,2),(4,'Fireball','Crea una bola de fuego',4,2),(5,'Healing Light','Cura heridas leves',5,3),(6,'Mind Control','Controla la mente de otros',8,4),(7,'Teleportation','Transporta instantáneamente',7,3),(8,'Invisibility','Vuelve invisible al lanzador',6,4),(9,'Summoning','Invoca criaturas mágicas',9,3),(10,'Time Stop','Detiene el tiempo brevemente',10,5),(11,'Elemental Fury','Desata los elementos',9,3),(12,'Dream Walk','Permite entrar en sueños',7,3),(13,'Curse Breaking','Rompe maldiciones',8,4),(14,'Astral Projection','Proyecta el espíritu',6,4),(15,'Nature\'s Embrace','Comunica con la naturaleza',5,2),(16,'Soul Mirror','Refleja ataques mágicos',7,2),(17,'Prophetic Vision','Otorga visiones del futuro',8,3),(18,'Necromancy','Levanta a los muertos',10,4),(19,'Transmutation','Transforma materia',9,3),(20,'Hex','Maldice al objetivo',6,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingrediente`
--

LOCK TABLES ingrediente WRITE;
/*!40000 ALTER TABLE ingrediente DISABLE KEYS */;
INSERT INTO ingrediente VALUES (1,'Ajenjo','Hierba amarga para pociones de clarividencia'),(2,'Polvo de hada','Restos brillantes de hadas para vuelo'),(3,'Sangre de dragón','Líquido poderoso para hechizos de fuerza'),(4,'Raíz de mandrágora','Planta gritona para reanimación'),(5,'Lágrima de fénix','Gota curativa de fénix'),(6,'Ojo de tritón','Utilizado en pociones de transformación'),(7,'Pluma de grifo','Para hechizos de protección'),(8,'Piel de serpiente arbórea','Usada en pociones de invisibilidad'),(9,'Polvo de luna','Recogido en luna llena para rituales'),(10,'Esencia de sombra','Extraída de las sombras para magia oscura'),(11,'Cristal de cuarzo','Amplifica energías mágicas'),(12,'Pétalos de rosa negra','Para hechizos de amor oscuro'),(13,'Cenizas de fénix','Restos poderosos para renacimiento'),(14,'Sangre de unicornio','Líquido plateado para vida eterna'),(15,'Raíz de ginseng','Potenciador mágico natural'),(16,'Escama de sirena','Para pociones relacionadas con el agua'),(17,'Polvo de estrellas','Recogido de meteoritos para magia celestial'),(18,'Hierba de los sueños','Induce visiones y sueños proféticos'),(19,'Veneno de basilisco','Ingrediente mortal para maldiciones'),(20,'Telaraña de acromántula','Para hechizos de atadura');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pocion`
--

LOCK TABLES pocion WRITE;
/*!40000 ALTER TABLE pocion DISABLE KEYS */;
INSERT INTO pocion VALUES (1,'Filtro de amor','Induce una fuerte atracción'),(2,'Poción multijugos','Permite adoptar la apariencia de otra persona'),(3,'Elixir de la vida','Prolonga la vida indefinidamente'),(4,'Veritaserum','Obliga a decir la verdad'),(5,'Felix Felicis','Otorga suerte líquida'),(6,'Poción de invisibilidad','Vuelve invisible al bebedor'),(7,'Filtro de paz','Calma la ansiedad y el nerviosismo'),(8,'Poción envejecedora','Envejece temporalmente al bebedor'),(9,'Amortentia','El filtro de amor más poderoso'),(10,'Poción matalobos','Alivia los síntomas de la licantropía'),(11,'Brebaje de los muertos','Induce un sueño profundo similar a la muerte'),(12,'Elixir de euforia','Induce una sensación de euforia irreal'),(13,'Poción agudizadora','Aumenta la percepción y reflejos'),(14,'Filtro de confusión','Causa confusión y aturdimiento'),(15,'Poción reabastecedora de sangre','Repone la sangre perdida'),(16,'Esencia de locura','Induce locura temporal'),(17,'Brebaje de fuego helado','Protege contra temperaturas extremas'),(18,'Elixir de sabiduría','Aumenta temporalmente la inteligencia'),(19,'Poción de la metamorfosis','Permite transformaciones animales'),(20,'Filtro del olvido','Borra memorias específicas');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pocion_bruja`
--

LOCK TABLES pocion_bruja WRITE;
/*!40000 ALTER TABLE pocion_bruja DISABLE KEYS */;
INSERT INTO pocion_bruja VALUES (1,3,12),(2,3,10),(3,1,8),(4,12,2),(5,12,10),(6,12,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pocion_ingrediente`
--

LOCK TABLES pocion_ingrediente WRITE;
/*!40000 ALTER TABLE pocion_ingrediente DISABLE KEYS */;
INSERT INTO pocion_ingrediente VALUES (1,1,13),(2,1,20),(3,1,8),(4,1,2),(5,4,6),(6,3,2),(7,16,17),(8,16,4),(9,1,11),(10,12,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poder`
--

LOCK TABLES poder WRITE;
/*!40000 ALTER TABLE poder DISABLE KEYS */;
INSERT INTO poder VALUES (1,'Telekinesis','Mover objetos con la mente',7),(2,'Pyrokinesis','Control del fuego',8),(3,'Clarividencia','Ver eventos distantes o futuros',6),(4,'Teletransportación','Moverse instantáneamente',9),(5,'Sanación','Curar heridas y enfermedades',8),(6,'Control mental','Influenciar pensamientos ajenos',10),(7,'Invisibilidad','Volverse invisible a voluntad',7),(8,'Transformación','Cambiar de forma',9),(9,'Manipulación del tiempo','Alterar el flujo temporal',10),(10,'Necromancia','Comunicarse y controlar muertos',10),(11,'Proyección astral','Separar el espíritu del cuerpo',8),(12,'Elementalismo','Control de los elementos naturales',9),(13,'Premonición','Ver el futuro en sueños o visiones',7),(14,'Vuelo','Levitar y volar',6),(15,'Absorción de energía','Drenar energía vital o mágica',8),(16,'Invocación','Llamar a seres de otros planos',9),(17,'Precognición','Conocer eventos antes de que ocurran',8),(18,'Manipulación de la realidad','Alterar la estructura de la realidad',10),(19,'Empatía','Sentir y manipular emociones',7),(20,'Transmutación','Cambiar la naturaleza de la materia',9);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poder_efecto`
--

LOCK TABLES poder_efecto WRITE;
/*!40000 ALTER TABLE poder_efecto DISABLE KEYS */;
INSERT INTO poder_efecto VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,2),(5,2,6),(6,3,2),(7,6,4),(8,6,2),(9,1,4),(10,2,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poder_tipo_magia`
--

LOCK TABLES poder_tipo_magia WRITE;
/*!40000 ALTER TABLE poder_tipo_magia DISABLE KEYS */;
INSERT INTO poder_tipo_magia VALUES (1,10,1),(2,1,10),(3,1,3),(4,2,2),(5,2,6),(6,3,2),(7,3,4),(8,7,2),(9,7,4),(10,9,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respeto`
--

LOCK TABLES respeto WRITE;
/*!40000 ALTER TABLE respeto DISABLE KEYS */;
INSERT INTO respeto VALUES (4,'Admirada'),(1,'Despreciada'),(3,'Respetada'),(2,'Tolerada'),(5,'Venerada');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_bruja`
--

LOCK TABLES tipo_bruja WRITE;
/*!40000 ALTER TABLE tipo_bruja DISABLE KEYS */;
INSERT INTO tipo_bruja VALUES (1,'Elemental','Especializada en magia basada en los elementos naturales',2000),(2,'Vidente','Capaz de ver el futuro y el pasado',1000),(3,'Necromante','Practica magia relacionada con la muerte y los muertos',5000),(4,'Alquimista','Experta en la transmutación de materiales y creación de pociones',4000),(5,'Hechicera','Domina una amplia variedad de hechizos y encantamientos',3500),(6,'Bruja de sangre','Utiliza la sangre como fuente de poder en sus rituales',4700),(7,'Bruja de la naturaleza','Conectada con las fuerzas de la naturaleza y los animales',3000),(8,'Ilusionista','Especialista en crear ilusiones y manipular la percepción',3000),(9,'Bruja del caos','Maneja fuerzas caóticas y destructivas',99999),(10,'Bruja celestial','Canaliza poderes celestiales y astrales',2000),(11,'Bruja de las sombras','Manipula las sombras y la oscuridad',4000),(12,'Bruja del tiempo','Puede manipular el flujo del tiempo',7000),(13,'Bruja de cristal','Utiliza cristales y gemas en sus hechizos',3000),(14,'Bruja de las runas','Especializada en magia rúnica y símbolos arcanos',6000),(15,'Bruja de los sueños','Puede entrar y manipular los sueños',2000),(16,'Bruja de las mareas','Controla las aguas y las mareas',1000),(17,'Bruja de la mente','Experta en telepatía y manipulación mental',5000),(18,'Bruja de las estaciones','Controla los cambios estacionales y el clima',3000),(19,'Bruja de los portales','Puede crear portales entre dimensiones',4300),(20,'Bruja del destino','Manipula el destino y la fortuna',6500);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_espiritu_familiar`
--

LOCK TABLES tipo_espiritu_familiar WRITE;
/*!40000 ALTER TABLE tipo_espiritu_familiar DISABLE KEYS */;
INSERT INTO tipo_espiritu_familiar VALUES (3,'Ancestral'),(1,'Animal'),(5,'Astral'),(2,'Elemental'),(7,'Guardián'),(4,'Mítico'),(6,'Sombra');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_magia`
--

LOCK TABLES tipo_magia WRITE;
/*!40000 ALTER TABLE tipo_magia DISABLE KEYS */;
INSERT INTO tipo_magia VALUES (1,'Elementalismo','Manipulación de los elementos naturales'),(2,'Nigromancia','Magia relacionada con la muerte y los no muertos'),(3,'Taumaturgia','Milagros y magia divina'),(4,'Adivinación','Predicción del futuro y clarividencia'),(5,'Transmutación','Alteración de la forma y propiedades de la materia'),(6,'Encantamiento','Hechizos que afectan la mente y el comportamiento'),(7,'Conjuración','Invocación de criaturas y objetos'),(8,'Ilusión','Creación de imágenes falsas y engaños sensoriales'),(9,'Abjuración','Magia protectora y defensiva'),(10,'Caos','Magia manipuladora de la realidad y de la destrucción');
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

-- Dump completed on 2024-09-26 19:17:52
