# Consultas SQL + Análisis lógico con Python

¡Bienvenido/a al Instituto Global de la Vida (IGV)! Este centro ficticio monitorea ecosistemas alrededor del planeta para proteger la biodiversidad, entender patrones en la observación de especies y tomar decisiones con base en datos reales.

En tu nuevo rol como analista de datos junior, vas a recibir acceso a una base con información histórica y actual sobre:

- Conocer la biodiversidad por región
- Identificar especies muy observadas (o poco observadas)
- Analizar la actividad de los observadores
- Detectar patrones en el tiempo y el espacio

Tu misión será ejecutar consultas SQL para entender, explorar y detectar patrones relevantes. A medida que avances, podrás visualizar algunos de tus hallazgos usando pandas


## Comprende la estructura de la plantilla de tu proyecto

La base de datos está cargada y lista para tu análisis. Los archivos provistos son:

- `./src/sql/create.sql` Tiene las tablas que necesitas: `regions, species, climate, observations`
- `./src/sql/insert.sql` Inserta registros obtenidos de una muestra proporcionada por [EOD – eBird Observation](https://www.gbif.org/occurrence)
- `./src/sql/queries.sql` está vacío y listo para que lo llenes.
- `./src/app.py` → Contiene la configuración de la base de datos y funciones para ejecutar scripts SQL.

Otras cosas importantes a mencionar sobre la estructura:

- Los proyectos profesionales suelen tener una carpeta `./src` que contiene todos los **archivos de código** (los archivos que implementará el programador).
- `./assets` es irrelevante para ti, contiene todas las imágenes que necesitábamos para este tutorial.
- La raíz (*root*) de cualquier proyecto profesional suele contener todos los archivos de configuración como `.gitignore`, `requirements.txt`, etc. Aprenderás más sobre estos archivos durante el resto del proyecto.


## 📝 Instrucciones

A continuación, encontrarás misiones reales del instituto, cada una diseñada para desarrollar un tipo distinto de consulta SQL.

Abre el archivo `./src/sql/queries.sql` y escribe las consultas que vayas resolviendo. Separa cada consulta con un punto y coma `;`.

**Ejemplo:**
```sql
-- Detectar temperaturas extremas
SELECT * FROM climate WHERE avg_temperature > 40 OR avg_temperature < -10;
```

Cuando termines una o más consultas, ejecuta el siguiente comando en la terminal para ver los resultados:

```bash
python src/app.py
```

Esto correrá automáticamente cada una de tus consultas y mostrará el resultado en la terminal como una tabla con Pandas.

> 💡 **Puedes modificar `queries.sql` tantas veces como necesites** y volver a ejecutar el comando para ver los nuevos resultados.

### Nivel 1 – Exploración básica (SELECT, LIMIT, DISTINCT, WHERE)

1. **¿Cuáles son las primeras 10 observaciones registradas?**  
   _Utiliza LIMIT para mostrar solo una parte de la tabla._

2. **¿Qué identificadores de región (`region_id`) aparecen en los datos?**  
   _Usa SELECT DISTINCT para evitar repeticiones._

3. **¿Cuántas especies distintas (`species_id`) se han observado?**  
   _Combina COUNT con DISTINCT para no contar duplicados._

4. **¿Cuántas observaciones hay para la región con `region_id = 2`?**  
   _Aplica una condición con WHERE._

5. **¿Cuántas observaciones se registraron el día `1998-08-08`?**  
   _Filtra por fecha exacta usando igualdad._

---

### Nivel 2 – Agregación y ordenamiento (GROUP BY, COUNT, ORDER BY, HAVING sin JOIN)

6. **¿Cuál es el `region_id` con más observaciones?**  
   _Agrupa por región y cuenta cuántas veces aparece cada una._

7. **¿Cuáles son los 5 `species_id` más frecuentes?**  
   _Agrupa, ordena por cantidad descendente y limita el resultado._

8. **¿Qué especies (`species_id`) tienen menos de 5 registros?**  
   _Agrupa por especie y usa HAVING para aplicar una condición._

9. **¿Qué observadores (`observer`) registraron más observaciones?**  
    _Agrupa por el nombre del observador y cuenta los registros._

---

### Nivel 3 – Relaciones entre tablas (JOIN)

10. **Muestra el nombre de la región (`regions.name`) para cada observación.**  
    _Relaciona `observations` con `regions` usando `region_id`._

11. **Muestra el nombre científico de cada especie registrada (`species.scientific_name`).**  
    _Relaciona `observations` con `species` usando `species_id`._

12. **¿Cuál es la especie más observada por cada región?**  
    _Agrupa por región y especie, y ordena por cantidad._

---

### Nivel 4 (opcional) – Manipulación de datos

> Este bloque es opcional y solo si deseas practicar operaciones que modifican los datos. (INSERT, UPDATE, DELETE) 
> Como analista, normalmente trabajarás con bases de solo lectura.

13. **Inserta una nueva observación ficticia en la tabla `observations`.**  
    _Asegúrate de incluir todos los campos requeridos por el esquema._

14. **Corrige el nombre científico de una especie con error tipográfico.**  
    _Busca primero el nombre incorrecto y luego actualízalo._

15. **Elimina una observación de prueba (usa su `id`).**  
    _Asegúrate de no borrar datos importantes._







