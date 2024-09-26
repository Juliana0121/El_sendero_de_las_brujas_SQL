# 🧙🏼‍♀️ El sendero de las brujas 🔮

Este proyecto se centra en el desarrollo de una base de datos diseñada para gestionar y organizar información detallada sobre los distintos tipos de brujas, sus poderes y otras características relevantes. La estructura de la base de datos incluye 11 entidades interconectadas, lo que permite una representación precisa y coherente de la información. Además, se han implementado 40 consultas específicas que permiten extraer datos variados de manera eficiente, ofreciendo una visión completa y flexible del contenido almacenado. ✨

## 🏁 Requerimientos

- Tener mínimo 10 entidades
- Se deben plantear 40 consultas DISTINTAS
- Cada consulta con su descripción y solución
-  Anexar los respectivos archivos:
   - ddL.sql -> creaciones (base de datos y tablas)
   - dML.sql -> Inserciones (Minimo 20 registros por entidad principales) 🎉

## 📋 Entidades

1. Bruja
- id_Bruja, nombre, apellido, apodo

2. tipo_Bruja
- id_Tipo_bruja, tipo, antiguedad, descripcion, capacidad_Maxima

3. poder
- id_Poder, efecto, nombre, descripcion, cantidad_Magia

4. conjuro
-id_Conjuro, nombre, consecuencia, descripcion

 5. clan
- id_Clan, nombre, descripcion, antiguedad, respeto

 6. amuleto
- id_Amuleto, nombre, descripcion, duracion

7. pocion
- id_Pocion, nombre, descripcion, efecto

8. ingredientes
- id_Ingredientes, nombre, descripcion

9. tipo_Magia
- id_Tipo_Magia, nombre, antiguedad, descripcion

10. espiritu_Familiar
- id_Espiritu_Familiar, nombre, tipo_espiritu_Familiar, descipcion

11. hechizo
- id_Hechizo, nombre, cantidad_Magia, concentracion

## 🤝 Relaciones
1. Bruja
- Relación con tipo_Bruja (una bruja pertenece a un tipo de bruja)
- Relación con clan (una bruja puede tener un vinculo con un clan)
- Relación con poder (una bruja manifiesta uno o varios poderes)
- Relación con conjuro (una bruja puede realizar uno o varios conjuros)
- Relación con amuleto (una bruja puede manipular uno o varios amuletos)
- Relación con pocion (una bruja puede realizar una o varias pociones)
- Relación con espiritu_Familiar (una bruja puede poseer uno o varios espíritus familiares)
- Relación con hechizo (una bruja puede lanzar uno o varios hechizos)

2. tipo_Bruja
- Relación con Bruja (un tipo de bruja puede tener varias brujas)

3. poder
- Relación con Bruja (un poder puede ser manifestado por varias brujas)
- Relación con tipo_Magia (un poder pertenece a un tipo de magia)

4. conjuro
- Relación con Bruja (un conjuro puede ser realizado por varias brujas)

5. clan
- Relación con Bruja (un clan puede tener un vinculo con varias brujas)

6. amuleto
- Relación con Bruja (un amuleto puede ser manipulado por varias brujas)

7. pocion
- Relación con Bruja (una poción puede ser realizada o preparada por varias brujas)
- Relación con ingredientes (una poción se puede contener varios ingredientes)

8. ingredientes
- Relación con pocion (un ingrediente puede ser usado en varias pociones)

9. tipo_Magia
- Relación con poder (un tipo de magia puede pertenecer a varios poderes)

10. espiritu_Familiar
- Relación con Bruja (un espíritu familiar puede estar vinculado a varias brujas)

11. hechizo
- Relación con Bruja (un hechizo puede ser lanzado por varias brujas)


## 🚀 Tecnologias utilizadas

 Las tecnologías que se utilizaron para este proyecto fueron MySQL como la base de datos relacional, Drawio.io para la realización de diagramas y MySQL Workbench como entorno de desarrollo. 🌟

 ## 👩‍🔧 Desarrollo 👨‍🔧

Para el desarrollo de una base de datos eficiente y bien estructurada, el primer paso fue la creación de un diagrama Entidad-Relación (ER), en el cual se identificaron cuidadosamente todas las entidades y sus respectivas relaciones. Este diagrama permitió visualizar de manera clara la estructura que tendría la base de datos, ayudando a definir la interconexión entre las diferentes entidades y asegurando que todos los aspectos fueran cubiertos adecuadamente. Durante esta fase, se revisaron aspectos clave como la cardinalidad de las relaciones, los atributos de cada entidad y cómo interactuarían entre sí en el modelo.

Una vez completado el diagrama ER, se procedió a implementar la base de datos en MySQL, eligiendo esta plataforma por su robustez y capacidad para manejar bases de datos relacionales de manera eficiente. Durante esta implementación, se establecieron todas las tablas, junto con sus claves primarias y foráneas, siguiendo estrictamente las relaciones previamente definidas en el diagrama ER. Cada tabla fue diseñada con detalles precisos, incluyendo los tipos de datos apropiados para cada campo, asegurando la integridad y consistencia de la información almacenada.

El proceso de creación de la base de datos fue minuciosamente detallado y documentado paso a paso, con el objetivo de minimizar cualquier posible error durante el desarrollo. Se pusieron en marcha controles de calidad que permitieron revisar cada parte del proceso de implementación, garantizando que los datos ingresados cumplieran con las expectativas de diseño y funcionalidad.

A medida que avanzaba el desarrollo, se fueron identificando ajustes necesarios en algunas áreas de la base de datos. Estas correcciones surgieron conforme se presentaban nuevas necesidades o se descubría información adicional. Algunos ejemplos incluyen la reestructuración de relaciones entre ciertas entidades para hacerlas más flexibles y adaptables, así como la optimización de ciertos campos para mejorar el rendimiento y facilitar futuras expansiones del sistema.

Gracias a este enfoque flexible y la atención constante a los detalles, se lograron realizar los ajustes necesarios sobre la marcha, lo que permitió que la base de datos evolucionara para cumplir con los requisitos que iban surgiendo. Las modificaciones realizadas fueron cuidadosamente evaluadas para asegurar que no comprometieran la integridad de los datos ni la coherencia de las relaciones establecidas. Esto llevó a la consecución de un resultado satisfactorio, con una base de datos sólida, bien organizada y capaz de manejar eficazmente la información requerida.


## Diagrama ER
![Diagrama_ER](https://github.com/user-attachments/assets/84546dee-958e-4253-8fb9-51aa9a9bf70b)

Este diagrama representa un diseño detallado de la estructura de datos para un sistema que maneja información sobre brujas, sus habilidades mágicas, clanes, pociones y otros elementos relacionados con un mundo mágico. El modelo permite entender las relaciones entre diferentes aspectos del sistema y cómo se organizará la información en la base de datos.

1. Se creó un modelo de datos que incluye varias entidades principales como "bruja", "amuleto", "conjuro", "clan", "pocion", "ingrediente", y "tipo_bruja".
2. Cada entidad tiene atributos asociados. Por ejemplo, "bruja" tiene atributos como "nombre", "apellido", y "id_Bruja".
3. Se establecieron relaciones entre las entidades, representadas por líneas que las conectan. Ejemplo:
   -  Una bruja puede realizar conjuros (relación "realiza")
   -  Una bruja puede pertenecer a un clan (relación "pertenece")
   -  Una bruja puede crear pociones (relación "crea")
4. Se utilizaron símbolos de diamante para representar relaciones, y rectángulos para representar entidades.
5. Se modelaron relaciones de muchos a muchos, como la que existe entre "bruja" y "conjuro", lo que implica que una bruja puede realizar múltiples conjuros y un conjuro puede ser realizado por múltiples brujas.

## Diagrama Modelo Relacional
![Diagrama_Modelo_Relacional](https://github.com/user-attachments/assets/a7834c07-2576-46fd-9e52-25e86d5e5e2e)

Este diagrama representa un diseño detallado y estructurado de una base de datos relacional con múltiples entidades interrelacionadas.

1. Se creó un esquema de base de datos relacional con múltiples tablas interconectadas.
2. Las columnas de cada tabla están listadas con sus nombres y tipos de datos (como INT, NVARCHAR, etc.).
3. Se establecieron relaciones entre las tablas mediante líneas de conexión, lo que indica las claves foráneas y las asociaciones entre entidades.
4. Algunas tablas parecen ser tablas de unión, lo que indica relaciones muchos a muchos entre otras entidades.
5. La organización visual del diagrama sugiere una jerarquía o agrupación lógica de las entidades relacionadas.
6. La presencia de múltiples tablas interconectadas sugiere un sistema de base de datos normalizado, diseñado para minimizar la redundancia y mantener la integridad de los datos.

## Consultas
# 1. Listado de todas las brujas existentes
```
USE dml;
SELECT * FROM Bruja;
```
![1](https://github.com/user-attachments/assets/58fbe19b-e2a0-48b2-be12-d03a839cad55)

# 2. Lista de la poción consultado por el nombre y descripción
```
USE dml;
SELECT nombre, descripcion FROM Pocion;
```
![2](https://github.com/user-attachments/assets/fec2f8c5-be95-4399-875d-77f7f6dfcfc1)

# 3.  Lista de hechizos por nombre de manera ordenada ascendente
```
USE dml;
SELECT nombre FROM Hechizo
ORDER BY nombre ASC;
```
![3](https://github.com/user-attachments/assets/a1a561cb-a06e-44dd-85c7-cce9fd927003)

# 4. Lista de brujas que existan en un mismo clan y sea consultado por su nombre y apellido
```
USE dml;
SELECT nombre, apellido FROM Bruja
WHERE id_Clan = 2;
```
![4](https://github.com/user-attachments/assets/321375f6-abd8-411a-905c-69cd9c15eef5)

# 5. Lista de poderes que tengan mayor de 7 cantidad_Magia
```
USE dml;
SELECT nombre, cantidad_Magia FROM Poder
WHERE cantidad_Magia > 7;
```
![5](https://github.com/user-attachments/assets/1939afc7-2f4a-42d4-a337-65743d062cb7)

# 6. Lista de Clanes según su Respeto de manera descendiente
```
USE dml;
SELECT id_Respeto, nombre, descripcion FROM Clan
ORDER BY id_Respeto DESC;
```
![6](https://github.com/user-attachments/assets/83f33ca3-991a-41c3-a83e-cb276380028f)

# 7. Lista de Brujas según su nombre y Tipo de Bruja que es
```
USE dml;
SELECT Bruja.nombre, tipo_Bruja.tipo FROM Bruja
JOIN tipo_Bruja ON Bruja.id_Tipo_Bruja = tipo_Bruja.id_Tipo_Bruja;
```
![7](https://github.com/user-attachments/assets/393150dd-986c-4fb5-b227-55a4180d9fc5)

# 8. Lista de Brujas según el clan que pertenece
```
USE dml;
SELECT Bruja.nombre, Clan.nombre AS Clan FROM Bruja
JOIN Clan ON Bruja.id_Clan = Clan.id_Clan;
```
![8](https://github.com/user-attachments/assets/ad51f32f-eaa8-4c31-8cb1-6e066ed09237)

# 9. Lista de brujas según su tipo de bruja si su respeto sea mayor de 3
```
USE dml;
SELECT Bruja.nombre, tipo_Bruja.tipo FROM Bruja
JOIN tipo_Bruja ON Bruja.id_Tipo_Bruja = tipo_Bruja.id_Tipo_Bruja
WHERE id_Respeto > 3;
```
![9](https://github.com/user-attachments/assets/9f480843-5715-4b6f-bfba-3792a1cd11cf)

# 10. Lista del nombre de hechizos según su concentración
```
USE dml;
SELECT Hechizo.nombre, Concentracion.concentracion FROM Hechizo
JOIN Concentracion ON Hechizo.id_Concentracion = Concentracion.id_Concentracion;
```
![10](https://github.com/user-attachments/assets/89b53631-7e6d-4f97-823c-7da56718eec0)

# 11. Lista de los nombres de los poderes según su efecto
```
USE dml;
SELECT Poder.nombre, Efecto.efecto FROM Poder
JOIN Poder_Efecto ON Poder.id_Poder = Poder_Efecto.id_Poder
JOIN Efecto ON Poder_Efecto.id_Efecto = Efecto.id_Efecto;
```
![11](https://github.com/user-attachments/assets/5e22d434-e4a9-4232-8d2d-2716cee1503f)

# 12. Lista de los amuletos según el poder
```
USE dml;
SELECT Amuleto.nombre AS Amuleto, Poder.nombre AS Poder FROM Amuleto
JOIN Amuleto_Poder ON Amuleto.id_Amuleto = Amuleto_Poder.id_Amuleto
JOIN Poder ON Amuleto_Poder.id_Poder = Poder.id_Poder;
```
![12](https://github.com/user-attachments/assets/2a692eff-2ffa-4175-94c0-5edfdf4eef6a)

# 13. Lista de brujas con sus hechizos
```
USE dml;
SELECT Bruja.nombre, Hechizo.nombre AS Hechizo FROM Bruja
JOIN Bruja_Hechizo ON Bruja.id_Bruja = Bruja_Hechizo.id_Bruja
JOIN Hechizo ON Bruja_Hechizo.id_Hechizo = Hechizo.id_Hechizo;
```
![13](https://github.com/user-attachments/assets/ab7c473e-c8e2-486a-98fa-3be675c9722a)

# 14. Lista de brujas según espíritu familiar
```
USE dml;
SELECT Bruja.nombre, espiritu_Familiar.nombre AS EspirituFamiliar FROM Bruja
JOIN espiritu_Familiar ON Bruja.id_Espiritu_Familiar = espiritu_Familiar.id_Espiritu_Familiar;
```
![14](https://github.com/user-attachments/assets/e9c38e9a-bf74-4fb7-a244-4c9fb4f540a3)

# 15. Lista de los hechizos ordenado por su cantidad de magia de manera descendente pero devuelva mínimo 3 registros
```
USE dml;
SELECT nombre, cantidad_Magia FROM Hechizo
ORDER BY cantidad_Magia DESC
LIMIT 3;
```
![15](https://github.com/user-attachments/assets/f878d91e-a24a-4f01-9e72-cf92a7bd5c0e)

# 16. Lista de brujas según su fecha de nacimiento sea menor al año 1500
```
USE dml;
SELECT nombre, fecha_Nacimiento FROM Bruja
WHERE fecha_Nacimiento < '1500-01-01';
```
![16](https://github.com/user-attachments/assets/3aa15ec5-66b9-41d6-ae04-9ece97a26936)

# 17. Lista de los conjuros según las iniciales del nombre del conjuro
```
USE dml;
SELECT nombre FROM Conjuro
WHERE nombre LIKE 'In%';
```
![17](https://github.com/user-attachments/assets/3186e34e-d8aa-4eac-980e-5a5e9671c654)

# 18. Lista de Brujas si su respeto sea 5
```
USE dml;
SELECT nombre, apellido FROM Bruja
WHERE id_Respeto = 5;
```
![18](https://github.com/user-attachments/assets/1af868da-6e58-4e77-b36a-74225a1431a6)

# 19. Lista de brujas si no pertenecen al primer clan
```
USE dml;
SELECT nombre, apellido FROM Bruja
WHERE id_Clan <> 1;
```
![19](https://github.com/user-attachments/assets/1f3d366c-5f42-4941-ac3c-a9a19133c410)

# 20. Lista de conjuros que no pertenece el segundo conjuro
```
USE dml;
SELECT nombre FROM Conjuro
WHERE id_Conjuro <> 2;
```
![20](https://github.com/user-attachments/assets/b096ee16-fcc2-4730-b2fa-28ba162ab589)

# 21. Lista de las pociones si la cantidad de caracteres de la descripción sea mayor  de 30
```
USE dml;
SELECT nombre FROM Pocion
WHERE LENGTH(descripcion) > 30;
```
![21](https://github.com/user-attachments/assets/6df6dc13-5abf-4926-83b5-859da670863e)

# 22. Total de Brujas
```
USE dml;
SELECT COUNT(*) AS TotalBrujas FROM Bruja;
```
![22](https://github.com/user-attachments/assets/e0ce2582-e2a0-40b0-ac37-31376b574620)

# 23. La cantidad de hechizos si su cantidad de magia sea mayor de 6
```
USE dml;
SELECT COUNT(*) AS HechizosConMuchaMagia FROM Hechizo
WHERE cantidad_Magia > 6;
```
![23](https://github.com/user-attachments/assets/51d7e5bb-5432-4c91-85a7-0707b2aea19c)

# 24. Total de pociones
```
USE dml;
SELECT COUNT(*) AS TotalPociones FROM Pocion;
```
![24](https://github.com/user-attachments/assets/0fe07ef5-da25-43e8-9b82-566a98b2346d)

# 25. Promedio de la cantidad de magia de los hechizos
```
USE dml;
SELECT AVG(cantidad_Magia) AS PromedioMagia FROM Hechizo;
```
![25](https://github.com/user-attachments/assets/1e8fdba3-71d4-498c-ba22-549dc1d21323)

# 26. Suma total de la cantidad de la magia del poder
```
USE dml;
SELECT SUM(cantidad_Magia) AS TotalMagia FROM Poder;
```
![26](https://github.com/user-attachments/assets/69e92c30-4bf5-44e0-9ac5-d14178391c21)

# 27. La cantidad de brujas que pertenecen en cada clan
```
USE dml;
SELECT Clan.nombre, COUNT(Bruja.id_Bruja) AS TotalBrujas FROM Clan
JOIN Bruja ON Clan.id_Clan = Bruja.id_Clan
GROUP BY Clan.nombre;
```
![27](https://github.com/user-attachments/assets/afe42eb6-e8a4-4a3e-a604-db13e25fc0d6)

# 28. Lista de concentración según la cantidad de hechizos
```
USE dml;
SELECT Concentracion.concentracion, COUNT(Hechizo.id_Hechizo) AS TotalHechizos FROM Concentracion
JOIN Hechizo ON Concentracion.id_Concentracion = Hechizo.id_Concentracion
GROUP BY Concentracion.concentracion;
```
![28](https://github.com/user-attachments/assets/f44d0ca9-c606-45d2-b0bc-07359c0b2115)

# 29. Lista de los clanes que tienen más de 3 brujas
```
USE dml;
SELECT Clan.nombre, COUNT(Bruja.id_Bruja) AS TotalBrujas FROM Clan
JOIN Bruja ON Clan.id_Clan = Bruja.id_Clan
GROUP BY Clan.nombre
HAVING COUNT(Bruja.id_Bruja) > 3;
```
![29](https://github.com/user-attachments/assets/3ce4e924-42c7-46f4-b312-db369384db25)

# 30. Lista de brujas que poseen el mismo espirítu familiar
```
USE dml;
SELECT B1.nombre AS Bruja1, B2.nombre AS Bruja2, espiritu_Familiar.nombre AS EspirituFamiliar
FROM Bruja B1
JOIN Bruja B2 ON B1.id_Espiritu_Familiar = B2.id_Espiritu_Familiar AND B1.id_Bruja <> B2.id_Bruja
JOIN espiritu_Familiar ON B1.id_Espiritu_Familiar = espiritu_Familiar.id_Espiritu_Familiar;
```
![30](https://github.com/user-attachments/assets/5e75b6e2-61a2-464b-b29d-e9afc00efa86)

# 31. Calcula el total mínimo y máximo requerido entre todos los hechizos
```
USE dml;
SELECT MAX(cantidad_Magia) AS MaxMagia, MIN(cantidad_Magia) AS MinMagia
FROM Hechizo;
```
![31](https://github.com/user-attachments/assets/6c42b8a3-120d-4015-9e08-a4d667afe97d)

# 32. Retorna el nombre completo de cada bruja
```
USE dml;
SELECT CONCAT(nombre, ' ', apellido) AS NombreCompleto
FROM Bruja;
```
![32](https://github.com/user-attachments/assets/ee3695cc-7073-4850-aa3c-3c461242a3d9)

# 33. Lista de brujas nacidas después del año 1900 
```
USE dml;
SELECT nombre, apellido, fecha_Nacimiento
FROM Bruja
WHERE YEAR(fecha_Nacimiento) > 1900;
```
![33](https://github.com/user-attachments/assets/e2d3419c-6d02-4b25-a28e-4a4b1bf760a9)

# 34. Obtener el promedio de magia utilizada por los poderes
```
USE dml;
SELECT ROUND(AVG(cantidad_Magia), 2) AS PromedioMagia
FROM Poder;
```
![34](https://github.com/user-attachments/assets/e52ea48d-62da-4503-8fdc-bf5f8288e8af)

# 35. Retorna el perfil completo de la Bruja
```
USE dml;
SELECT 
    Bruja.id_Bruja, 
    Bruja.nombre AS NombreBruja, 
    Bruja.apellido AS ApellidoBruja, 
    Bruja.fecha_Nacimiento, 
    Respeto.respeto AS NivelRespeto, 
    tipo_Bruja.tipo AS TipoBruja, 
    Clan.nombre AS ClanNombre, 
    espiritu_Familiar.nombre AS NombreEspirituFamiliar, 
    tipo_Espiritu_Familiar.tipo AS TipoEspirituFamiliar
FROM 
    Bruja
JOIN 
    Respeto ON Bruja.id_Respeto = Respeto.id_Respeto
JOIN 
    tipo_Bruja ON Bruja.id_Tipo_Bruja = tipo_Bruja.id_Tipo
JOIN 
    Clan ON Bruja.id_Clan = Clan.id_Clan
JOIN 
    espiritu_Familiar ON Bruja.id_Espiritu_Familiar = espiritu_Familiar.id_Espiritu_Familiar
JOIN 
    tipo_Espiritu_Familiar ON espiritu_Familiar.id_Tipo_Espiritu_Familiar = tipo_Espiritu_Familiar.id_Tipo_Espiritu_Familiar;

```
- Parte 1
![35](https://github.com/user-attachments/assets/7bf20b13-9d86-4836-acc9-d04677fefab8)

- Parte 2
![35](https://github.com/user-attachments/assets/4bc11bde-8765-4a45-a2a1-04dc915026d0)


# 36. Retorna los ingredientes de una poción
```
USE dml;
SELECT 
    Pocion.nombre AS NombrePocion, 
    Ingrediente.nombre AS NombreIngrediente
FROM 
    Pocion
JOIN 
    Pocion_Ingrediente ON Pocion.id_Pocion = Pocion_Ingrediente.id_Pocion
JOIN 
    Ingrediente ON Pocion_Ingrediente.id_Ingrediente = Ingrediente.id_Ingrediente
ORDER BY Pocion.nombre ASC;
```
![36](https://github.com/user-attachments/assets/b28dea92-30fe-4199-b68c-41f6c42dd5ff)

# 37. Retorna la cantidad de hechizos y conjuros que posee cada bruja
```
USE dml;
SELECT 
    Bruja.nombre AS NombreBruja,
    COUNT(DISTINCT Bruja_Hechizo.id_Hechizo) AS CantidadHechizos,
    COUNT(DISTINCT Bruja_Conjuro.id_Conjuro) AS CantidadConjuros
FROM 
    Bruja
LEFT JOIN 
    Bruja_Hechizo ON Bruja.id_Bruja = Bruja_Hechizo.id_Bruja
LEFT JOIN 
    Bruja_Conjuro ON Bruja.id_Bruja = Bruja_Conjuro.id_Bruja
GROUP BY 
    Bruja.id_Bruja;
```
![37](https://github.com/user-attachments/assets/c5713d2c-cf09-4eba-be77-b325e518bb58)

# 38. Cantidad de ingredientes que existen en la dispensa
```
USE dml;
SELECT 
    COUNT(*) AS CantidadIngredientes
FROM 
    Ingrediente;
```
![38](https://github.com/user-attachments/assets/f7bf7dd9-2911-4f49-a384-299ebc2ac832)

# 39. Retorna el repesto de la Bruja u el clan, con finalidades de comparación del respeto que tiene la bruja ante su clan
```
USE dml;
SELECT 
    Bruja.nombre AS NombreBruja,
    RespetoBruja.respeto AS RespetoBruja,
    Clan.nombre AS NombreClan,
    RespetoClan.respeto AS RespetoClan
FROM 
    Bruja
JOIN 
    Respeto AS RespetoBruja ON Bruja.id_Respeto = RespetoBruja.id_Respeto
JOIN 
    Clan ON Bruja.id_Clan = Clan.id_Clan
JOIN 
    Respeto AS RespetoClan ON Clan.id_Respeto = RespetoClan.id_Respeto;
```
![39](https://github.com/user-attachments/assets/16924b19-2315-4122-870f-6b249d61e6fd)

# 40. Retorna el total de Clanes existentes
```
USE dml;
SELECT 
    COUNT(*) AS TotalClanes
FROM 
    Clan;
```
![40](https://github.com/user-attachments/assets/ba96f4a7-3b6e-46b7-9032-980a5d1578c4)



## ✍️ Autor
- [Alvaro Martinez Alcina 🐈🔮](https://github.com/alvaroMartinez13)
- [Juliana Numa 💻🧁](https://github.com/Juliana0121)
