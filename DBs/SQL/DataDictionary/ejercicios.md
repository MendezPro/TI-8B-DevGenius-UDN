## 🗂️ Table: `tbc_ejercicios`

**📝 Description**: Esta tabla almacena información detallada sobre los ejercicios disponibles dentro del sistema, incluyendo su tipo, nivel de dificultad, recomendaciones, restricciones y estado. Sirve como base para construir rutinas de entrenamiento personalizadas para los usuarios.

### 🗄️ Columns

| Column              | DataType                                                                 | PK  | FK | NN  | UQ | BIN | UN | ZF | AI  | Default             | Comment |
|---------------------|--------------------------------------------------------------------------|-----|----|-----|----|-----|----|----|-----|----------------------|---------|
| `id`                | `INT`                                                                    | 🔑  |    | ✅  |    |     | ✅ |    | ✅  |                      | Descripción: Identificador único del ejercicio.<br>Naturaleza: Numérico.<br>Dominio: Entero positivo autoincrementable. |
| `nombre`            | `VARCHAR(255)`                                                           |     |    | ✅  |    |     |    |    |     |                      | Descripción: Nombre del ejercicio.<br>Naturaleza: Cualitativo.<br>Dominio: Texto corto. |
| `descripcion`       | `VARCHAR(255)`                                                           |     |    |     |    |     |    |    |     |                      | Descripción: Detalles del ejercicio.<br>Naturaleza: Cualitativo.<br>Dominio: Texto corto. |
| `video`             | `VARCHAR(255)`                                                           |     |    |     |    |     |    |    |     |                      | Descripción: URL o enlace a video demostrativo.<br>Naturaleza: Cualitativo.<br>Dominio: Texto URL. |
| `tipo`              | `ENUM('Aerobico', 'Resistencia', 'Flexibilidad', 'Fuerza')`              |     |    | ✅  |    |     |    |    |     |                      | Descripción: Clasificación del tipo de ejercicio.<br>Naturaleza: Cualitativo.<br>Dominio: Enumerado. |
| `estatus`           | `BOOLEAN`                                                                |     |    | ✅  |    | ✅  |    |    |     | `TRUE`              | Descripción: Indica si el ejercicio está activo (TRUE) o inactivo (FALSE).<br>Naturaleza: Binario.<br>Dominio: 1 bit. |
| `dificultad`        | `ENUM('Basico', 'Intermedio', 'Avanzado')`                              |     |    | ✅  |    |     |    |    |     |                      | Descripción: Nivel de dificultad del ejercicio.<br>Naturaleza: Cualitativo.<br>Dominio: Enumerado. |
| `fecha_registro`    | `DATETIME`                                                               |     |    |     |    |     |    |    |     | `CURRENT_TIMESTAMP` | Descripción: Fecha y hora de creación del ejercicio.<br>Naturaleza: Cuantitativo.<br>Dominio: Fecha y hora. |
| `fecha_actualizacion`| `DATETIME`                                                              |     |    |     |    |     |    |    |     | `CURRENT_TIMESTAMP` (on update) | Descripción: Última modificación registrada.<br>Naturaleza: Cuantitativo.<br>Dominio: Fecha y hora. |
| `recomendaciones`   | `VARCHAR(255)`                                                           |     |    |     |    |     |    |    |     |                      | Descripción: Indicaciones o consejos durante la ejecución.<br>Naturaleza: Cualitativo.<br>Dominio: Texto. |
| `restricciones`     | `VARCHAR(255)`                                                           |     |    |     |    |     |    |    |     |                      | Descripción: Condiciones o situaciones en las que no se recomienda el ejercicio.<br>Naturaleza: Cualitativo.<br>Dominio: Texto. |

---

### 📘 Diccionario de Datos: Tabla `tbc_ejercicios`

| **Nombre del Campo**     | **Tipo de Dato** | **Tamaño / Formato**                                         | **Nulo** | **Descripción**                                                              |
|--------------------------|------------------|--------------------------------------------------------------|----------|-------------------------------------------------------------------------------|
| `id`                     | INTEGER          | Autoincremental                                              | No       | Identificador único del ejercicio.                                           |
| `nombre`                 | VARCHAR          | 255 caracteres                                               | No       | Nombre del ejercicio.                                                        |
| `descripcion`            | VARCHAR          | 255 caracteres                                               | Sí       | Descripción breve del ejercicio.                                             |
| `video`                  | VARCHAR          | 255 caracteres                                               | Sí       | URL de un video demostrativo.                                                |
| `tipo`                   | ENUM             | 'Aerobico' \| 'Resistencia' \| 'Flexibilidad' \| 'Fuerza'    | No       | Clasificación según el tipo de ejercicio.                                    |
| `estatus`                | BOOLEAN          | 0 (Inactivo) / 1 (Activo)                                    | No       | Estado actual del ejercicio.                                                 |
| `dificultad`             | ENUM             | 'Basico' \| 'Intermedio' \| 'Avanzado'                       | No       | Nivel de dificultad asociado al ejercicio.                                   |
| `fecha_registro`         | DATETIME         | AAAA-MM-DD HH:MM:SS                                          | Sí       | Fecha de creación del registro.                                              |
| `fecha_actualizacion`    | DATETIME         | AAAA-MM-DD HH:MM:SS                                          | Sí       | Última fecha de modificación del registro.                                   |
| `recomendaciones`        | VARCHAR          | 255 caracteres                                               | Sí       | Consejos de ejecución para el usuario.                                       |
| `restricciones`          | VARCHAR          | 255 caracteres                                               | Sí       | Indicaciones sobre limitaciones o situaciones no recomendadas.               |

---

## 👥 Equipo de Desarrollo  

| Integrante | Contacto | Rol | Observaciones |
|------------|----------|----------------------------|------------------|
| **Orlando Méndez Montes** | [@MendezPro](https://github.com/MendezPro) | Líder de Desarrollo, Frontend y Backend | ✅ Revisado y aprobado |
| **Zamira Cuevas Zamora** | [@ZamyCuevas](https://github.com/ZamyCuevas) | Documentación técnica | ❌ Sin Comentarios |
| **Julia Maday Martinez Santos** | [@JuliaMaday](https://github.com/JuliaMaday) | Desarrollador de Bases de Datos | ❌ Sin Comentarios |
| **Esperanza Cruz Galindo** | [@Dulce990](https://github.com/Dulce990) | Desarrollador FrontEnd | ❌ Sin Comentarios |

### ✒️ **Datos del Autor**

**Creado por:** [@ZamyCuevas](https://github.com/ZamyCuevas)

