## 🗂️ Table: `tbc_rutinas`

**📝 Description**: Esta tabla almacena las rutinas de ejercicio personalizadas asignadas a los usuarios. Incluye información sobre el nombre de la rutina, los ejercicios asignados, los objetivos, duración, frecuencia y las fechas de inicio y finalización, lo cual permite realizar un seguimiento y personalizar el progreso de los usuarios en su entrenamiento físico.

### 🗄️ Columns

| Column                | DataType        | PK  | FK  | NN  | UQ  | BIN | UN | ZF | AI  | Default           | Comment                                                                 |
|-----------------------|-----------------|-----|-----|-----|-----|-----|----|----|-----|-------------------|-------------------------------------------------------------------------|
| `id`                  | `INT`           | 🔑  |     | ✅  |     |     | ✅ |     | ✅  |                   | Descripción: Identificador único de la rutina.<br>Naturaleza: Numérico.<br>Dominio: Entero positivo autoincrementable. |
| `nombre`              | `VARCHAR(255)`   |     |     | ✅  |     |     |    |     |     |                   | Descripción: Nombre de la rutina de ejercicio.<br>Naturaleza: Texto corto.<br>Dominio: String de longitud variable (255). |
| `id_user`             | `INT`           |     | ✅  | ✅  |     |     | ✅ |     |     |                   | Descripción: Identificador del usuario asociado a la rutina.<br>Naturaleza: Numérico.<br>Dominio: Entero positivo que actúa como llave foránea hacia `tbb_usuarios.id`. |
| `id_ejercicios`       | `INT`           |     | ✅  | ✅  |     |     | ✅ |     |     |                   | Descripción: Identificador de los ejercicios asignados a la rutina.<br>Naturaleza: Numérico.<br>Dominio: Entero positivo que actúa como llave foránea hacia `tbc_ejercicios.id`. |
| `id_objetivo`         | `VARCHAR(255)`   |     |     |     |     |     |    |     |     |                   | Descripción: Objetivo de la rutina (como pérdida de peso, tonificación, etc.).<br>Naturaleza: Texto.<br>Dominio: String de longitud variable (255). |
| `descripcion`         | `VARCHAR(500)`   |     |     |     |     |     |    |     |     |                   | Descripción: Descripción detallada de la rutina.<br>Naturaleza: Texto.<br>Dominio: String de longitud variable (500). |
| `duracion`            | `FLOAT`         |     |     |     |     |     | ✅ |     |     |                   | Descripción: Duración estimada de la rutina en horas.<br>Naturaleza: Cuantitativo.<br>Dominio: Número decimal positivo. |
| `frecuencia`          | `SMALLINT`      |     |     |     |     |     |    |     |     |                   | Descripción: Frecuencia semanal de la rutina en días.<br>Naturaleza: Cuantitativo.<br>Dominio: Número entero positivo. |
| `fecha_inicio`        | `DATETIME`      |     |     |     |     |     |    |     |     |                   | Descripción: Fecha de inicio de la rutina.<br>Naturaleza: Cuantitativo.<br>Dominio: Formato de fecha y hora (YYYY-MM-DD HH:MM:SS). |
| `fecha_finalizacion`  | `DATETIME`      |     |     |     |     |     |    |     |     |                   | Descripción: Fecha de finalización de la rutina.<br>Naturaleza: Cuantitativo.<br>Dominio: Formato de fecha y hora (YYYY-MM-DD HH:MM:SS). |
| `fecha_creacion`      | `DATETIME`      |     |     | ✅  |     |     |    |     |     | `CURRENT_TIMESTAMP` | Descripción: Fecha y hora en que se registró la rutina.<br>Naturaleza: Cuantitativo.<br>Dominio: Formato de fecha y hora (YYYY-MM-DD HH:MM:SS). |
| `fecha_actualizacion` | `DATETIME`      |     |     |     |     |     |    |     |     | `CURRENT_TIMESTAMP` (on update) | Descripción: Fecha y hora de la última actualización de la rutina.<br>Naturaleza: Cuantitativo.<br>Dominio: Formato de fecha y hora (YYYY-MM-DD HH:MM:SS). |

---

### 📘 Diccionario de Datos: Tabla `tbc_rutinas`

| **Nombre del Campo**        | **Tipo de Dato**  | **Tamaño / Formato**                              | **Nulo** | **Descripción**                                                               |
|-----------------------------|-------------------|---------------------------------------------------|----------|-------------------------------------------------------------------------------|
| `id`                        | INTEGER           | Autoincremental                                   | No       | Identificador único de la rutina registrada en el sistema.                    |
| `nombre`                    | VARCHAR(255)      | -                                                 | No       | Nombre de la rutina de ejercicio asignada al usuario.                         |
| `id_user`                   | INTEGER           | -                                                 | No       | ID del usuario asociado a la rutina (Llave foránea a `tbb_usuarios.id`).     |
| `id_ejercicios`             | INTEGER           | -                                                 | No       | ID de los ejercicios asignados a la rutina (Llave foránea a `tbc_ejercicios.id`). |
| `id_objetivo`               | VARCHAR(255)      | -                                                 | Sí       | Objetivo específico de la rutina, como pérdida de peso, tonificación, etc.     |
| `descripcion`               | VARCHAR(500)      | -                                                 | Sí       | Descripción detallada de la rutina.                                           |
| `duracion`                  | FLOAT             | Número decimal                                    | Sí       | Duración estimada de la rutina en horas.                                      |
| `frecuencia`                | SMALLINT          | -                                                 | Sí       | Número de días a la semana en que se realiza la rutina.                       |
| `fecha_inicio`              | DATETIME         | AAAA-MM-DD HH:MM:SS                               | Sí       | Fecha de inicio de la rutina.                                                 |
| `fecha_finalizacion`        | DATETIME         | AAAA-MM-DD HH:MM:SS                               | Sí       | Fecha de finalización de la rutina.                                           |
| `fecha_creacion`            | DATETIME         | AAAA-MM-DD HH:MM:SS                               | No       | Fecha y hora en que se registró la rutina.                                    |
| `fecha_actualizacion`       | DATETIME         | AAAA-MM-DD HH:MM:SS                               | Sí       | Fecha y hora de la última actualización de la rutina.                         |

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
