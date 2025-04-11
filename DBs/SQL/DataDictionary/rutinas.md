## 🗂️ Table: `tbc_rutinas`

**📝 Description**: Esta tabla almacena las rutinas de ejercicio personalizadas asignadas a los usuarios. Incluye información sobre el nombre de la rutina, los ejercicios asignados, los objetivos, duración, frecuencia y las fechas de inicio y finalización, lo cual permite realizar un seguimiento y personalizar el progreso de los usuarios en su entrenamiento físico.

### 🗄️ Columns

| Column              | DataType          | PK  | FK  | NN  | UQ  | BIN  | UN  | ZF  | AI  | Default           | Comment                                                                                                                                                                                                                           |
|---------------------|-------------------|-----|-----|-----|-----|------|-----|-----|-----|-------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `ID`                | `INT`             | ✅  |     | ✅  |     |      |     |     | ✅  | `AUTO_INCREMENT`  | Descripción: Identificador único de cada rutina.<br> Naturaleza: Cuantitativa.<br> Dominio: Números enteros positivos.<br> Composición: 1{0-9}.                                                                 |
| `Nombre`            | `VARCHAR(100)`     |     |     |     |     |      |     |     |     |                   | Descripción: Nombre descriptivo de la rutina.<br> Naturaleza: Cualitativa.<br> Dominio: Caracteres alfabéticos y espacios.<br> Composición: 1{A-Z|a-z| }100.                                                                           |
| `user_id`           | `INT`             |     | ✅  |     |     |      | ✅  |     |     |                   | Descripción: Identificador del usuario al que pertenece la rutina.<br> Naturaleza: Numérico.<br> Dominio: Entero positivo que corresponde a una llave foránea en la tabla de usuarios.<br> Composición: 1{0-9}. |
| `ejercicio_id`      | `INT`             |     | ✅  |     |     |      | ✅  |     |     |                   | Descripción: Identificador del ejercicio asociado a la rutina.<br> Naturaleza: Numérico.<br> Dominio: Entero positivo que corresponde a una llave foránea en la tabla de ejercicios.<br> Composición: 1{0-9}. |
| `objetivo_id`       | `INT`             |     | ✅  |     |     |      | ✅  |     |     |                   | Descripción: Identificador del objetivo asociado a la rutina.<br> Naturaleza: Numérico.<br> Dominio: Entero positivo que corresponde a una llave foránea en la tabla de objetivos.<br> Composición: 1{0-9}. |
| `descripcion`       | `VARCHAR(500)`     |     |     |     |     |      |     |     |     |                   | Descripción: Explicación de la rutina, con los detalles de su ejecución.<br> Naturaleza: Cualitativa.<br> Dominio: Caracteres alfabéticos y alfanuméricos.<br> Composición: 1{A-Z|a-z|0-9|. , -}500.                             |
| `duracion`          | `FLOAT`           |     |     |     |     |      | ✅  |     |     |                   | Descripción: Duración de la rutina en minutos.<br> Naturaleza: Cuantitativa.<br> Dominio: Número decimal positivo.<br> Composición: 1{0-9}.                                                                 |
| `frecuencia`        | `TIME`            |     |     |     |     |      |     |     |     |                   | Descripción: Frecuencia de la rutina, especificando la duración de la actividad.<br> Naturaleza: Cuantitativa.<br> Dominio: Tiempo en formato 'HH:MM:SS'.<br> Composición: Horas = [00|01|...|23], Minutos = [00|01|...|59], Segundos = [00|01|...|59]. |
| `fecha_creacion`    | `DATETIME`        |     |     | ✅  |     |      |     |     |     | `CURRENT_TIMESTAMP` | Descripción: Fecha y hora en que se creó la rutina.<br> Naturaleza: Cuantitativa.<br> Dominio: Formato 'YYYY-MM-DD HH:MM:SS'.<br> Composición: Año = 4{0-9}, Mes = [01|02|...|12], Día = [01|02|...|31]. |
| `fecha_actualizacion`| `DATETIME`        |     |     |     |     |      |     |     |     |                   | Descripción: Fecha de la última actualización de la rutina.<br> Naturaleza: Cuantitativa.<br> Dominio: Formato 'YYYY-MM-DD HH:MM:SS'.<br> Composición: Año = 4{0-9}, Mes = [01|02|...|12], Día = [01|02|...|31]. |
| `fecha_inicio`      | `DATETIME`        |     |     |     |     |      |     |     |     |                   | Descripción: Fecha de inicio de la rutina.<br> Naturaleza: Cuantitativa.<br> Dominio: Formato 'YYYY-MM-DD HH:MM:SS'.<br> Composición: Año = 4{0-9}, Mes = [01|02|...|12], Día = [01|02|...|31]. |
| `fecha_finalizacion`| `DATETIME`        |     |     |     |     |      |     |     |     |                   | Descripción: Fecha de finalización de la rutina.<br> Naturaleza: Cuantitativa.<br> Dominio: Formato 'YYYY-MM-DD HH:MM:SS'.<br> Composición: Año = 4{0-9}, Mes = [01|02|...|12], Día = [01|02|...|31]. |


---

## 👥 Equipo de Desarrollo  

| Integrante                  | Contacto                                      | Rol                                | Observaciones |
|-----------------------------|-----------------------------------------------|------------------------------------|---------------|
| **Orlando Méndez Montes**    | [@MendezPro](https://github.com/MendezPro)    | Líder de Desarrollo, Frontend y Backend | ✅ Revisado y aprobado |
| **Zamira Cuevas Zamora**     | [@ZamyCuevas](https://github.com/ZamyCuevas)   | Documentación técnica              | ❌ Sin Comentarios |
| **Julia Maday Martinez Santos** | [@JuliaMaday](https://github.com/JuliaMaday) | Desarrollador de Bases de Datos     | ❌ Sin Comentarios |
| **Esperanza Cruz Galindo**   | [@Dulce990](https://github.com/Dulce990)      | Desarrollador FrontEnd             | ❌ Sin Comentarios |

### ✒️ **Datos del Autor**

**Creado por:** [@ZamyCuevas](https://github.com/ZamyCuevas)
