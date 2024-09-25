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

 ## Desarrollo

Para el desarrollo de una base de datos eficiente y bien estructurada, el primer paso fue la creación de un diagrama Entidad-Relación (ER), en el cual se identificaron cuidadosamente todas las entidades y sus respectivas relaciones. Este diagrama permitió visualizar de manera clara la estructura que tendría la base de datos, ayudando a definir la interconexión entre las diferentes entidades y asegurando que todos los aspectos fueran cubiertos adecuadamente. Durante esta fase, se revisaron aspectos clave como la cardinalidad de las relaciones, los atributos de cada entidad y cómo interactuarían entre sí en el modelo.

Una vez completado el diagrama ER, se procedió a implementar la base de datos en MySQL, eligiendo esta plataforma por su robustez y capacidad para manejar bases de datos relacionales de manera eficiente. Durante esta implementación, se establecieron todas las tablas, junto con sus claves primarias y foráneas, siguiendo estrictamente las relaciones previamente definidas en el diagrama ER. Cada tabla fue diseñada con detalles precisos, incluyendo los tipos de datos apropiados para cada campo, asegurando la integridad y consistencia de la información almacenada.

El proceso de creación de la base de datos fue minuciosamente detallado y documentado paso a paso, con el objetivo de minimizar cualquier posible error durante el desarrollo. Se pusieron en marcha controles de calidad que permitieron revisar cada parte del proceso de implementación, garantizando que los datos ingresados cumplieran con las expectativas de diseño y funcionalidad.

A medida que avanzaba el desarrollo, se fueron identificando ajustes necesarios en algunas áreas de la base de datos. Estas correcciones surgieron conforme se presentaban nuevas necesidades o se descubría información adicional. Algunos ejemplos incluyen la reestructuración de relaciones entre ciertas entidades para hacerlas más flexibles y adaptables, así como la optimización de ciertos campos para mejorar el rendimiento y facilitar futuras expansiones del sistema.

Gracias a este enfoque flexible y la atención constante a los detalles, se lograron realizar los ajustes necesarios sobre la marcha, lo que permitió que la base de datos evolucionara para cumplir con los requisitos que iban surgiendo. Las modificaciones realizadas fueron cuidadosamente evaluadas para asegurar que no comprometieran la integridad de los datos ni la coherencia de las relaciones establecidas. Esto llevó a la consecución de un resultado satisfactorio, con una base de datos sólida, bien organizada y capaz de manejar eficazmente la información requerida.

## ✍️ Autor
- Alvaro Martinez
- Juliana Numa 💻🪫
