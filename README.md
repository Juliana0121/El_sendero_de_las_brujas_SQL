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
El código SQL primero selecciona la base de datos `dml` con la instrucción `USE dml;`, lo que indica que las operaciones subsiguientes se realizarán en esta base de datos. Luego, con `SELECT * FROM Bruja;`, recupera todas las filas y columnas de la tabla `Bruja` dentro de dicha base de datos, mostrando así toda la información almacenada en ella.

![1](https://github.com/user-attachments/assets/58fbe19b-e2a0-48b2-be12-d03a839cad55)

# 2. Lista de la poción consultado por el nombre y descripción
```
USE dml;
SELECT nombre, descripcion FROM Pocion;
```
El código SQL primero selecciona la base de datos **`dml`** con la instrucción `USE dml;`, asegurando que las operaciones afecten a esta base de datos. Luego, la consulta `SELECT nombre, descripcion FROM Pocion;` selecciona y muestra únicamente las columnas **`nombre`** y **`descripcion`** de la tabla **`Pocion`**, omitiendo las demás columnas que pueda tener dicha tabla.

![2](https://github.com/user-attachments/assets/fec2f8c5-be95-4399-875d-77f7f6dfcfc1)

# 3.  Lista de hechizos por nombre de manera ordenada ascendente
```
USE dml;
SELECT nombre FROM Hechizo
ORDER BY nombre ASC;
```
El código SQL primero selecciona la base de datos **`dml`** con la instrucción `USE dml;`. Luego, la consulta `SELECT nombre FROM Hechizo ORDER BY nombre ASC;` recupera solo la columna **`nombre`** de la tabla **`Hechizo`** y organiza los resultados en orden ascendente (de la A a la Z) según los valores de la columna **`nombre`**.

![3](https://github.com/user-attachments/assets/a1a561cb-a06e-44dd-85c7-cce9fd927003)

# 4. Lista de brujas que existan en un mismo clan y sea consultado por su nombre y apellido
```
USE dml;
SELECT nombre, apellido FROM Bruja
WHERE id_Clan = 2;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;`, para que todas las operaciones se realicen sobre ella. Luego, la consulta `SELECT nombre, apellido FROM Bruja WHERE id_Clan = 2;` recupera las columnas **`nombre`** y **`apellido`** de la tabla **`Bruja`**, pero solo muestra las filas donde el valor de la columna **`id_Clan`** sea igual a **2**. Es decir, filtra los resultados para obtener solo las brujas que pertenecen al clan con el identificador **2**.

![4](https://github.com/user-attachments/assets/321375f6-abd8-411a-905c-69cd9c15eef5)

# 5. Lista de poderes que tengan mayor de 7 cantidad_Magia
```
USE dml;
SELECT nombre, cantidad_Magia FROM Poder
WHERE cantidad_Magia > 7;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` para realizar las operaciones en ella. Luego, la consulta `SELECT nombre, cantidad_Magia FROM Poder WHERE cantidad_Magia > 7;` recupera las columnas **`nombre`** y **`cantidad_Magia`** de la tabla **`Poder`**, pero solo muestra las filas donde el valor de **`cantidad_Magia`** sea mayor a **7**. Es decir, filtra los poderes que tienen una cantidad de magia superior a ese valor.

![5](https://github.com/user-attachments/assets/1939afc7-2f4a-42d4-a337-65743d062cb7)

# 6. Lista de Clanes según su Respeto de manera descendiente
```
USE dml;
SELECT id_Respeto, nombre, descripcion FROM Clan
ORDER BY id_Respeto DESC;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;`. Luego, la consulta `SELECT id_Respeto, nombre, descripcion FROM Clan ORDER BY id_Respeto DESC;` recupera las columnas **`id_Respeto`**, **`nombre`** y **`descripcion`** de la tabla **`Clan`** y organiza los resultados en orden descendente según el valor de **`id_Respeto`**. Esto significa que los clanes con mayor nivel de respeto aparecerán primero en la lista.

![6](https://github.com/user-attachments/assets/83f33ca3-991a-41c3-a83e-cb276380028f)

# 7. Lista de Brujas según su nombre y Tipo de Bruja que es
```
USE dml;
SELECT Bruja.nombre, tipo_Bruja.tipo FROM Bruja
JOIN tipo_Bruja ON Bruja.id_Tipo_Bruja = tipo_Bruja.id_Tipo_Bruja;
```
El código SQL selecciona la base de datos **`dml`** con la instrucción `USE dml;`. Luego, la consulta `SELECT Bruja.nombre, tipo_Bruja.tipo FROM Bruja JOIN tipo_Bruja ON Bruja.id_Tipo_Bruja = tipo_Bruja.id_Tipo_Bruja;` realiza una **unión (JOIN)** entre las tablas **`Bruja`** y **`tipo_Bruja`**. Esta unión se basa en la coincidencia de los valores de la columna **`id_Tipo_Bruja`** en ambas tablas. El resultado de la consulta muestra los nombres de las brujas y el tipo de bruja al que pertenecen, combinando la información de ambas tablas.

![7](https://github.com/user-attachments/assets/393150dd-986c-4fb5-b227-55a4180d9fc5)

# 8. Lista de Brujas según el clan que pertenece
```
USE dml;
SELECT Bruja.nombre, Clan.nombre AS Clan FROM Bruja
JOIN Clan ON Bruja.id_Clan = Clan.id_Clan;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;`. Luego, la consulta `SELECT Bruja.nombre, Clan.nombre AS Clan FROM Bruja JOIN Clan ON Bruja.id_Clan = Clan.id_Clan;` realiza una **unión (JOIN)** entre las tablas **`Bruja`** y **`Clan**`, relacionando las brujas con sus respectivos clanes mediante la columna **`id_Clan`** presente en ambas tablas. El resultado muestra los nombres de las brujas y el nombre del clan al que pertenecen, con la columna del clan renombrada como **`Clan`** para mayor claridad en el resultado.

![8](https://github.com/user-attachments/assets/ad51f32f-eaa8-4c31-8cb1-6e066ed09237)

# 9. Lista de brujas según su tipo de bruja si su respeto sea mayor de 3
```
USE dml;
SELECT Bruja.nombre, tipo_Bruja.tipo FROM Bruja
JOIN tipo_Bruja ON Bruja.id_Tipo_Bruja = tipo_Bruja.id_Tipo_Bruja
WHERE id_Respeto > 3;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que realiza una **unión (JOIN)** entre las tablas **`Bruja`** y **`tipo_Bruja`**, relacionando las brujas con sus respectivos tipos a través de la columna **`id_Tipo_Bruja`**. La consulta muestra los nombres de las brujas y el tipo de bruja al que pertenecen, aplicando un filtro que solo incluye aquellas brujas cuyo **`id_Respeto`** es mayor a **3**. Así, el resultado presentará únicamente las brujas con un nivel de respeto superior a 3, junto con su tipo correspondiente.

![9](https://github.com/user-attachments/assets/9f480843-5715-4b6f-bfba-3792a1cd11cf)

# 10. Lista del nombre de hechizos según su concentración
```
USE dml;
SELECT Hechizo.nombre, Concentracion.concentracion FROM Hechizo
JOIN Concentracion ON Hechizo.id_Concentracion = Concentracion.id_Concentracion;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que realiza una **unión (JOIN)** entre las tablas **`Hechizo`** y **`Concentracion`**. Esta unión se basa en la columna **`id_Concentracion`**, que relaciona los hechizos con su nivel de concentración correspondiente. La consulta recupera y muestra los nombres de los hechizos junto con su nivel de concentración, combinando la información de ambas tablas para proporcionar un listado de hechizos y su respectiva concentración.

![10](https://github.com/user-attachments/assets/89b53631-7e6d-4f97-823c-7da56718eec0)

# 11. Lista de los nombres de los poderes según su efecto
```
USE dml;
SELECT Poder.nombre, Efecto.efecto FROM Poder
JOIN Poder_Efecto ON Poder.id_Poder = Poder_Efecto.id_Poder
JOIN Efecto ON Poder_Efecto.id_Efecto = Efecto.id_Efecto;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que realiza una serie de **uniones (JOIN)** entre las tablas **`Poder`**, **`Poder_Efecto`** y **`Efecto`**. Primero, une la tabla **`Poder`** con **`Poder_Efecto`** utilizando la columna **`id_Poder`** para relacionar cada poder con sus efectos asociados. Luego, une **`Poder_Efecto`** con la tabla **`Efecto`** mediante la columna **`id_Efecto`**, que conecta los efectos con sus descripciones. La consulta recupera y muestra los nombres de los poderes junto con el efecto correspondiente, proporcionando así una lista que detalla cada poder y los efectos que le están asociados.

![11](https://github.com/user-attachments/assets/5e22d434-e4a9-4232-8d2d-2716cee1503f)

# 12. Lista de los amuletos según el poder
```
USE dml;
SELECT Amuleto.nombre AS Amuleto, Poder.nombre AS Poder FROM Amuleto
JOIN Amuleto_Poder ON Amuleto.id_Amuleto = Amuleto_Poder.id_Amuleto
JOIN Poder ON Amuleto_Poder.id_Poder = Poder.id_Poder;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que realiza varias **uniones (JOIN)** entre las tablas **`Amuleto`**, **`Amuleto_Poder`** y **`Poder`**. Primero, une la tabla **`Amuleto`** con **`Amuleto_Poder`** utilizando la columna **`id_Amuleto`** para relacionar cada amuleto con los poderes que posee. Luego, se une **`Amuleto_Poder`** con la tabla **`Poder`** a través de la columna **`id_Poder`**, que conecta cada poder con su descripción. La consulta recupera y muestra los nombres de los amuletos y los poderes asociados a ellos, presentando así una lista que detalla qué poderes tiene cada amuleto, con la columna del amuleto renombrada como **`Amuleto`** para mayor claridad.

![12](https://github.com/user-attachments/assets/2a692eff-2ffa-4175-94c0-5edfdf4eef6a)

# 13. Lista de brujas con sus hechizos
```
USE dml;
SELECT Bruja.nombre, Hechizo.nombre AS Hechizo FROM Bruja
JOIN Bruja_Hechizo ON Bruja.id_Bruja = Bruja_Hechizo.id_Bruja
JOIN Hechizo ON Bruja_Hechizo.id_Hechizo = Hechizo.id_Hechizo;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que realiza varias **uniones (JOIN)** entre las tablas **`Bruja`**, **`Bruja_Hechizo`** y **`Hechizo`**. Primero, se une la tabla **`Bruja`** con **`Bruja_Hechizo`** utilizando la columna **`id_Bruja`** para relacionar cada bruja con los hechizos que ha aprendido. Luego, se une **`Bruja_Hechizo`** con la tabla **`Hechizo`** mediante la columna **`id_Hechizo`**, conectando cada hechizo con su descripción. La consulta recupera y muestra los nombres de las brujas junto con los hechizos que les corresponden, presentando así una lista que detalla qué hechizos ha aprendido cada bruja, con la columna del hechizo renombrada como **`Hechizo`** para mayor claridad.

![13](https://github.com/user-attachments/assets/ab7c473e-c8e2-486a-98fa-3be675c9722a)

# 14. Lista de brujas según espíritu familiar
```
USE dml;
SELECT Bruja.nombre, espiritu_Familiar.nombre AS EspirituFamiliar FROM Bruja
JOIN espiritu_Familiar ON Bruja.id_Espiritu_Familiar = espiritu_Familiar.id_Espiritu_Familiar;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que realiza una **unión (JOIN)** entre las tablas **`Bruja`** y **`espiritu_Familiar`**. Esta unión se basa en la columna **`id_Espiritu_Familiar`**, que relaciona cada bruja con su respectivo espíritu familiar. La consulta recupera y muestra los nombres de las brujas junto con el nombre del espíritu familiar que les corresponde, proporcionando así una lista que detalla qué espíritu familiar tiene cada bruja, con la columna del espíritu renombrada como **`EspirituFamiliar`** para mayor claridad.

![14](https://github.com/user-attachments/assets/e9c38e9a-bf74-4fb7-a244-4c9fb4f540a3)

# 15. Lista de los hechizos ordenado por su cantidad de magia de manera descendente pero devuelva mínimo 3 registros
```
USE dml;
SELECT nombre, cantidad_Magia FROM Hechizo
ORDER BY cantidad_Magia DESC
LIMIT 3;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que recupera los nombres y las cantidades de magia de la tabla **`Hechizo`**. La consulta utiliza la cláusula `ORDER BY cantidad_Magia DESC` para organizar los resultados en orden descendente según la cantidad de magia, mostrando primero los hechizos con mayor cantidad. Además, se limita el resultado a las **3** primeras filas mediante `LIMIT 3`, lo que significa que solo se mostrarán los tres hechizos más poderosos en términos de cantidad de magia.

![15](https://github.com/user-attachments/assets/f878d91e-a24a-4f01-9e72-cf92a7bd5c0e)

# 16. Lista de brujas según su fecha de nacimiento sea menor al año 1500
```
USE dml;
SELECT nombre, fecha_Nacimiento FROM Bruja
WHERE fecha_Nacimiento < '1500-01-01';
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que recupera los nombres y las fechas de nacimiento de la tabla **`Bruja`**. La consulta utiliza la cláusula `WHERE` para filtrar los resultados, mostrando únicamente las brujas cuya **`fecha_Nacimiento`** sea anterior al **1 de enero de 1500**. Esto permite obtener una lista de brujas que nacieron antes de esa fecha específica.

![16](https://github.com/user-attachments/assets/3aa15ec5-66b9-41d6-ae04-9ece97a26936)

# 17. Lista de los conjuros según las iniciales del nombre del conjuro
```
USE dml;
SELECT nombre FROM Conjuro
WHERE nombre LIKE 'In%';
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que recupera los nombres de la tabla **`Conjuro`**. La cláusula `WHERE nombre LIKE 'In%'` filtra los resultados para mostrar solo aquellos nombres que comienzan con la cadena **`In`**. El símbolo **`%`** actúa como un comodín que representa cualquier secuencia de caracteres que siga a **`In`**. Esto significa que se obtendrán todos los conjuros cuyo nombre comience con "In", independientemente de lo que venga después de esa secuencia.

![17](https://github.com/user-attachments/assets/3186e34e-d8aa-4eac-980e-5a5e9671c654)

# 18. Lista de Brujas si su respeto sea 5
```
USE dml;
SELECT nombre, apellido FROM Bruja
WHERE id_Respeto = 5;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que recupera los nombres y apellidos de la tabla **`Bruja`**. La cláusula `WHERE id_Respeto = 5` filtra los resultados para mostrar únicamente aquellas brujas cuyo **`id_Respeto`** es igual a **5**. Esto permite obtener una lista de brujas que tienen un nivel de respeto específico, en este caso, el nivel que corresponde al valor 5.

![18](https://github.com/user-attachments/assets/1af868da-6e58-4e77-b36a-74225a1431a6)

# 19. Lista de brujas si no pertenecen al primer clan
```
USE dml;
SELECT nombre, apellido FROM Bruja
WHERE id_Clan <> 1;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que recupera los nombres y apellidos de la tabla **`Bruja`**. La cláusula `WHERE id_Clan <> 1` filtra los resultados para mostrar solo aquellas brujas que no pertenecen al clan cuyo **`id_Clan`** es igual a **1**. Esto permite obtener una lista de brujas que pertenecen a clanes diferentes al clan con el identificador **1**.

![19](https://github.com/user-attachments/assets/1f3d366c-5f42-4941-ac3c-a9a19133c410)

# 20. Lista de conjuros que no pertenece el segundo conjuro
```
USE dml;
SELECT nombre FROM Conjuro
WHERE id_Conjuro <> 2;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que recupera los nombres de la tabla **`Conjuro`**. La cláusula `WHERE id_Conjuro <> 2` filtra los resultados para mostrar solo aquellos conjuros cuyo **`id_Conjuro`** no sea igual a **2**. Esto permite obtener una lista de conjuros excluyendo el que tiene el identificador **2**.

![20](https://github.com/user-attachments/assets/b096ee16-fcc2-4730-b2fa-28ba162ab589)

# 21. Lista de las pociones si la cantidad de caracteres de la descripción sea mayor  de 30
```
USE dml;
SELECT nombre FROM Pocion
WHERE LENGTH(descripcion) > 30;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que recupera los nombres de la tabla **`Pocion`**. La cláusula `WHERE LENGTH(descripcion) > 30` filtra los resultados para mostrar únicamente aquellas pociones cuya **`descripcion`** tiene una longitud mayor a **30** caracteres. Esto permite obtener una lista de pociones que tienen descripciones más detalladas o extensas.

![21](https://github.com/user-attachments/assets/6df6dc13-5abf-4926-83b5-859da670863e)

# 22. Total de Brujas
```
USE dml;
SELECT COUNT(*) AS TotalBrujas FROM Bruja;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que cuenta el número total de filas en la tabla **`Bruja`**. La instrucción `COUNT(*)` se utiliza para contar todas las entradas, y el resultado se renombra como **`TotalBrujas`**. Esto proporciona un solo valor que indica cuántas brujas están registradas en la tabla.

![22](https://github.com/user-attachments/assets/e0ce2582-e2a0-40b0-ac37-31376b574620)

# 23. La cantidad de hechizos si su cantidad de magia sea mayor de 6
```
USE dml;
SELECT COUNT(*) AS HechizosConMuchaMagia FROM Hechizo
WHERE cantidad_Magia > 6;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que cuenta cuántos hechizos en la tabla **`Hechizo`** tienen una **`cantidad_Magia`** superior a **6**. La instrucción `COUNT(*)` se utiliza para contar todas las filas que cumplen con esta condición, y el resultado se renombra como **`HechizosConMuchaMagia`**. Así, se obtiene un único valor que indica cuántos hechizos tienen una cantidad de magia considerada alta, es decir, mayor a 6.

![23](https://github.com/user-attachments/assets/51d7e5bb-5432-4c91-85a7-0707b2aea19c)

# 24. Total de pociones
```
USE dml;
SELECT COUNT(*) AS TotalPociones FROM Pocion;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que cuenta el número total de filas en la tabla **`Pocion`**. La instrucción `COUNT(*)` se utiliza para contar todas las entradas de la tabla, y el resultado se renombra como **`TotalPociones`**. Esto proporciona un único valor que indica cuántas pociones están registradas en la tabla.

![24](https://github.com/user-attachments/assets/0fe07ef5-da25-43e8-9b82-566a98b2346d)

# 25. Promedio de la cantidad de magia de los hechizos
```
USE dml;
SELECT AVG(cantidad_Magia) AS PromedioMagia FROM Hechizo;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que calcula el promedio de la columna **`cantidad_Magia`** en la tabla **`Hechizo`**. La función `AVG(cantidad_Magia)` se utiliza para calcular este valor promedio, y el resultado se renombra como **`PromedioMagia`**. Así, se obtiene un único valor que representa el promedio de la cantidad de magia de todos los hechizos registrados en la tabla.

![25](https://github.com/user-attachments/assets/1e8fdba3-71d4-498c-ba22-549dc1d21323)

# 26. Suma total de la cantidad de la magia del poder
```
USE dml;
SELECT SUM(cantidad_Magia) AS TotalMagia FROM Poder;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que calcula la suma total de la columna **`cantidad_Magia`** en la tabla **`Poder`**. La función `SUM(cantidad_Magia)` se utiliza para sumar todos los valores de esa columna, y el resultado se renombra como **`TotalMagia`**. De este modo, se obtiene un único valor que representa la cantidad total de magia de todos los poderes registrados en la tabla.

![26](https://github.com/user-attachments/assets/69e92c30-4bf5-44e0-9ac5-d14178391c21)

# 27. La cantidad de brujas que pertenecen en cada clan
```
USE dml;
SELECT Clan.nombre, COUNT(Bruja.id_Bruja) AS TotalBrujas FROM Clan
JOIN Bruja ON Clan.id_Clan = Bruja.id_Clan
GROUP BY Clan.nombre;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que cuenta el número de brujas en cada clan. Para ello, realiza una **unión (JOIN)** entre las tablas **`Clan`** y **`Bruja`** mediante la columna **`id_Clan`**, relacionando cada clan con las brujas que le pertenecen. Utiliza la función `COUNT(Bruja.id_Bruja)` para contar cuántas brujas están asociadas a cada clan, renombrando el resultado como **`TotalBrujas`**. Finalmente, la consulta agrupa los resultados por el nombre del clan utilizando `GROUP BY Clan.nombre`, lo que proporciona una lista que muestra cuántas brujas pertenecen a cada uno de los clanes registrados en la base de datos.

![27](https://github.com/user-attachments/assets/afe42eb6-e8a4-4a3e-a604-db13e25fc0d6)

# 28. Lista de concentración según la cantidad de hechizos
```
USE dml;
SELECT Concentracion.concentracion, COUNT(Hechizo.id_Hechizo) AS TotalHechizos FROM Concentracion
JOIN Hechizo ON Concentracion.id_Concentracion = Hechizo.id_Concentracion
GROUP BY Concentracion.concentracion;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que cuenta el número de hechizos asociados a cada nivel de concentración. Para lograr esto, realiza una **unión (JOIN)** entre las tablas **`Concentracion`** y **`Hechizo`** utilizando la columna **`id_Concentracion`**, lo que relaciona cada nivel de concentración con los hechizos que le corresponden. La consulta utiliza la función `COUNT(Hechizo.id_Hechizo)` para contar cuántos hechizos están asociados a cada nivel de concentración, y renombra el resultado como **`TotalHechizos`**. Al final, agrupa los resultados por el valor de **`concentracion`** utilizando `GROUP BY Concentracion.concentracion`, lo que permite obtener una lista que muestra cuántos hechizos corresponden a cada nivel de concentración registrado en la base de datos.

![28](https://github.com/user-attachments/assets/f44d0ca9-c606-45d2-b0bc-07359c0b2115)

# 29. Lista de los clanes que tienen más de 3 brujas
```
USE dml;
SELECT Clan.nombre, COUNT(Bruja.id_Bruja) AS TotalBrujas FROM Clan
JOIN Bruja ON Clan.id_Clan = Bruja.id_Clan
GROUP BY Clan.nombre
HAVING COUNT(Bruja.id_Bruja) > 3;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que cuenta el número de brujas en cada clan, filtrando para mostrar solo aquellos clanes que tienen más de tres brujas. La consulta comienza con una **unión (JOIN)** entre las tablas **`Clan`** y **`Bruja`** utilizando la columna **`id_Clan`**, lo que permite relacionar cada clan con sus brujas correspondientes. Luego, utiliza `COUNT(Bruja.id_Bruja)` para contar cuántas brujas están asociadas a cada clan, renombrando este total como **`TotalBrujas`**. Los resultados se agrupan por el nombre del clan con `GROUP BY Clan.nombre`. Finalmente, la cláusula `HAVING COUNT(Bruja.id_Bruja) > 3` filtra los resultados para mostrar únicamente aquellos clanes que tienen más de tres brujas. Así, el resultado final presenta una lista de clanes que cuentan con una cantidad significativa de brujas, destacando su relevancia dentro de la base de datos.

![29](https://github.com/user-attachments/assets/3ce4e924-42c7-46f4-b312-db369384db25)

# 30. Lista de brujas que poseen el mismo espirítu familiar
```
USE dml;
SELECT B1.nombre AS Bruja1, B2.nombre AS Bruja2, espiritu_Familiar.nombre AS EspirituFamiliar
FROM Bruja B1
JOIN Bruja B2 ON B1.id_Espiritu_Familiar = B2.id_Espiritu_Familiar AND B1.id_Bruja <> B2.id_Bruja
JOIN espiritu_Familiar ON B1.id_Espiritu_Familiar = espiritu_Familiar.id_Espiritu_Familiar;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y ejecuta una consulta que empareja brujas que comparten el mismo espíritu familiar. Para ello, se utilizan alias **`B1`** y **`B2`** para la tabla **`Bruja`**, lo que permite comparar diferentes brujas entre sí. La consulta realiza una **unión (JOIN)** entre estas dos instancias de la tabla en función de la columna **`id_Espiritu_Familiar`**, añadiendo la condición de que **`B1.id_Bruja`** debe ser diferente de **`B2.id_Bruja`** para evitar emparejar a la misma bruja. A continuación, se une la tabla **`espiritu_Familiar`** para obtener el nombre del espíritu familiar asociado. Finalmente, se seleccionan los nombres de las dos brujas (renombrados como **`Bruja1`** y **`Bruja2`**) junto con el nombre del espíritu familiar, denominado **`EspirituFamiliar`**. El resultado presenta una lista de pares de brujas que comparten el mismo espíritu familiar, revelando así las conexiones y relaciones entre ellas en la base de datos.

![30](https://github.com/user-attachments/assets/5e75b6e2-61a2-464b-b29d-e9afc00efa86)

# 31. Calcula el total mínimo y máximo requerido entre todos los hechizos
```
USE dml;
SELECT MAX(cantidad_Magia) AS MaxMagia, MIN(cantidad_Magia) AS MinMagia
FROM Hechizo;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que determina los valores extremos de la columna **`cantidad_Magia`** en la tabla **`Hechizo`**. Utiliza las funciones `MAX(cantidad_Magia)` y `MIN(cantidad_Magia)` para calcular, respectivamente, la cantidad máxima y mínima de magia entre todos los hechizos registrados. Los resultados se renombrarán como **`MaxMagia`** y **`MinMagia`**, proporcionando así un resumen de los niveles más altos y más bajos de magia presentes en los hechizos de la base de datos.

![31](https://github.com/user-attachments/assets/6c42b8a3-120d-4015-9e08-a4d667afe97d)

# 32. Retorna el nombre completo de cada bruja
```
USE dml;
SELECT CONCAT(nombre, ' ', apellido) AS NombreCompleto
FROM Bruja;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que concatena el nombre y el apellido de las brujas de la tabla **`Bruja`**. Utiliza la función `CONCAT(nombre, ' ', apellido)` para unir el **`nombre`** y el **`apellido`** de cada bruja, separándolos con un espacio en blanco. El resultado se renombra como **`NombreCompleto`**, proporcionando una lista de nombres completos de todas las brujas registradas en la base de datos. Esto permite visualizar fácilmente los nombres completos en lugar de tenerlos por separado.

![32](https://github.com/user-attachments/assets/ee3695cc-7073-4850-aa3c-3c461242a3d9)

# 33. Lista de brujas nacidas después del año 1900 
```
USE dml;
SELECT nombre, apellido, fecha_Nacimiento
FROM Bruja
WHERE YEAR(fecha_Nacimiento) > 1900;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que recupera los nombres, apellidos y fechas de nacimiento de las brujas de la tabla **`Bruja`**. La cláusula `WHERE YEAR(fecha_Nacimiento) > 1900` filtra los resultados para mostrar únicamente aquellas brujas que nacieron después del año **1900**. Esto permite obtener una lista de brujas más recientes, facilitando la identificación de las nacidas en el siglo XX o XXI.

![33](https://github.com/user-attachments/assets/e2d3419c-6d02-4b25-a28e-4a4b1bf760a9)

# 34. Obtener el promedio de magia utilizada por los poderes
```
USE dml;
SELECT ROUND(AVG(cantidad_Magia), 2) AS PromedioMagia
FROM Poder;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y luego ejecuta una consulta que calcula el promedio de la columna **`cantidad_Magia`** en la tabla **`Poder`**. Utiliza la función `AVG(cantidad_Magia)` para obtener el valor promedio, y la función `ROUND(..., 2)` redondea este resultado a dos decimales. El resultado se renombra como **`PromedioMagia`**, proporcionando así un único valor que representa el promedio de la cantidad de magia de todos los poderes registrados en la base de datos, presentado con precisión decimal.

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
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y ejecuta una consulta que recupera detalles sobre las brujas y sus características asociadas. La consulta extrae información de la tabla **`Bruja`**, incluyendo el **`id_Bruja`**, **`nombre`**, **`apellido`**, y **`fecha_Nacimiento`**, así como datos de otras tablas relacionadas. Utiliza uniones (JOIN) para combinar la tabla de brujas con la tabla **`Respeto`** para obtener el **`NivelRespeto`**, con **`tipo_Bruja`** para el **`TipoBruja`**, con **`Clan`** para el **`ClanNombre`**, con **`espiritu_Familiar`** para el **`NombreEspirituFamiliar`**, y con **`tipo_Espiritu_Familiar`** para el **`TipoEspirituFamiliar`**. Estas uniones permiten relacionar cada bruja con su respectivo nivel de respeto, tipo, clan y espíritu familiar, ofreciendo así una visión completa de las brujas. El resultado proporciona información detallada sobre su identidad y sus vínculos, facilitando un análisis más profundo de las características y relaciones de las brujas dentro de la base de datos.

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
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y ejecuta una consulta que recupera los nombres de las pociones junto con los nombres de sus ingredientes asociados. Para ello, se extraen los nombres de las pociones de la tabla **`Pocion`** (renombrado como **`NombrePocion`**) y los nombres de los ingredientes de la tabla **`Ingrediente`** (renombrado como **`NombreIngrediente`**). La consulta utiliza uniones (JOIN) para relacionar las tablas: primero, se une la tabla **`Pocion`** con **`Pocion_Ingrediente`** mediante la columna **`id_Pocion`**, lo que vincula cada poción con sus respectivos ingredientes. Luego, se relaciona **`Pocion_Ingrediente`** con **`Ingrediente`** utilizando **`id_Ingrediente`** para obtener los nombres de los ingredientes. Finalmente, los resultados se ordenan alfabéticamente por el nombre de la poción. Así, el resultado de la consulta ofrece una lista organizada de pociones y sus ingredientes, facilitando la comprensión de las composiciones de las pociones en la base de datos.

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
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y ejecuta una consulta que recupera información sobre las brujas y la cantidad de hechizos y conjuros que cada una ha aprendido. La consulta extrae el nombre de las brujas de la tabla **`Bruja`** (renombrado como **`NombreBruja`**) y cuenta la cantidad de hechizos y conjuros distintos asociados a cada bruja mediante las funciones `COUNT(DISTINCT Bruja_Hechizo.id_Hechizo)` y `COUNT(DISTINCT Bruja_Conjuro.id_Conjuro)`. Se utilizan uniones externas (LEFT JOIN) para asegurarse de incluir todas las brujas, incluso aquellas sin hechizos o conjuros asociados, uniendo la tabla **`Bruja`** con **`Bruja_Hechizo`** y **`Bruja_Conjuro`** mediante la columna **`id_Bruja`**. Finalmente, los resultados se agrupan por **`id_Bruja`** para mostrar cada bruja junto con sus conteos correspondientes. Así, el resultado de la consulta proporciona una lista de brujas junto con la cantidad de hechizos y conjuros que han aprendido, ofreciendo una visión clara de sus habilidades mágicas en la base de datos.

![37](https://github.com/user-attachments/assets/c5713d2c-cf09-4eba-be77-b325e518bb58)

# 38. Cantidad de ingredientes que existen en la dispensa
```
USE dml;
SELECT 
    COUNT(*) AS CantidadIngredientes
FROM 
    Ingrediente;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y ejecuta una consulta que cuenta el número total de ingredientes en la tabla **`Ingrediente`**. Utiliza la función `COUNT(*)` para contabilizar todas las filas de la tabla, lo que permite obtener el total de ingredientes registrados. El resultado se renombra como **`CantidadIngredientes`**, proporcionando así un valor que refleja la cantidad total de ingredientes disponibles en la base de datos. Esta consulta es útil para obtener una visión general de la variedad de ingredientes que se pueden utilizar en pociones y otros contextos mágicos.

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
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y ejecuta una consulta que recupera información sobre las brujas y sus clanes, incluyendo los niveles de respeto tanto de las brujas como de los clanes. La consulta extrae el nombre de las brujas de la tabla **`Bruja`** (renombrado como **`NombreBruja`**), el nivel de respeto de las brujas de la tabla **`Respeto`** (denominado **`RespetoBruja`**), el nombre de los clanes de la tabla **`Clan`** (renombrado como **`NombreClan`**) y el nivel de respeto correspondiente de los clanes (también de la tabla **`Respeto`**, renombrado como **`RespetoClan`**). Para ello, se realizan varias uniones: se conecta la tabla de brujas con la de respeto para obtener el nivel de respeto de cada bruja, se une con la tabla de clanes para acceder a sus nombres y, por último, se relaciona nuevamente con la tabla de respeto para obtener el nivel de respeto de los clanes. El resultado proporciona una lista que permite analizar las relaciones entre las brujas y sus clanes en términos de respeto dentro de la base de datos.

![39](https://github.com/user-attachments/assets/16924b19-2315-4122-870f-6b249d61e6fd)

# 40. Retorna el total de Clanes existentes
```
USE dml;
SELECT 
    COUNT(*) AS TotalClanes
FROM 
    Clan;
```
El código SQL selecciona la base de datos **`dml`** con `USE dml;` y ejecuta una consulta que cuenta el número total de clanes en la tabla **`Clan`**. Utiliza la función `COUNT(*)` para contabilizar todas las filas presentes en la tabla, lo que permite obtener el total de clanes registrados. El resultado se renombra como **`TotalClanes`**, ofreciendo así un valor que refleja la cantidad total de clanes en la base de datos. Esta consulta es útil para tener una visión general del número de clanes que existen, lo cual puede ser relevante para el análisis de la estructura social en el contexto mágico de la base de datos.

![40](https://github.com/user-attachments/assets/ba96f4a7-3b6e-46b7-9032-980a5d1578c4)



## ✍️ Autor
- [Alvaro Martinez 🐈🔮](https://github.com/alvaroMartinez13)
- [Juliana Numa 💻🧁](https://github.com/Juliana0121)
