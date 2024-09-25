# 🧙🏼‍♀️ Proyecto MySQL

Este proyecto se centra en el desarrollo de una base de datos diseñada para gestionar y organizar información detallada sobre los distintos tipos de brujas, sus poderes y otras características relevantes. La estructura de la base de datos incluye 11 entidades interconectadas, lo que permite una representación precisa y coherente de la información. Además, se han implementado 40 consultas específicas que permiten extraer datos variados de manera eficiente, ofreciendo una visión completa y flexible del contenido almacenado. ✨

## 🏁 Comenzando

Descarga en ZIP, extrae en su equipo. Ya abierto en VS Code, click en "index.html", click izquierzo y live server. 🎉

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

 Las tecnologías que se utilizaron para este proyecto fueron HTMl, CSS y JavaScript. 🌟

## ✍️ Autor
- Juliana Numa 💻🪫
