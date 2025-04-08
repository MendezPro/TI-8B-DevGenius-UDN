## 🗂️ Table: `tbd_programas_saludables`

**📝 Description**: Esta tabla almacena la información de los programas saludables personalizados que se asignan a los usuarios. Incluye detalles como el nombre del programa, fechas de inicio y finalización, relaciones con dietas, entrenadores y usuarios, permitiendo así una gestión integral de rutinas y hábitos saludables.

### 🗄️ Columns

| Column              | DataType      | PK  | FK | NN  | UQ | BIN | UN | ZF | AI  | Default | Comment |
|---------------------|---------------|-----|----|-----|----|-----|----|----|-----|---------|---------|
| `id`                | `INT`         | 🔑  |    | ✅  |    |     | ✅ |    | ✅  |         | Descripción: Identificador único del programa saludable.<br>Naturaleza: Numérico.<br>Dominio: Entero positivo autoincrementable. |
| `nombre`            | `VARCHAR(255)`|     |    | ✅  |    |     |    |    |     |         | Descripción: Nombre del programa saludable.<br>Naturaleza: Cualitativo.<br>Dominio: Texto de hasta 255 caracteres. |
| `descripcion`       | `VARCHAR(500)`|     |    |     |    |     |    |    |     |         | Descripción: Detalles y objetivos del programa.<br>Naturaleza: Cualitativo.<br>Dominio: Texto libre hasta 500 caracteres. |
| `fecha_inicio`      | `DATETIME`    |     |    | ✅  |    |     |    |    |     |         | Descripción: Fecha de inicio del programa.<br>Naturaleza: Temporal.<br>Dominio: Formato datetime. |
| `fecha_finalizacion`| `DATETIME`    |     |    |     |    |     |    |    |     |         | Descripción: Fecha en la que finaliza el programa (puede ser nula).<br>Naturaleza: Temporal. |
| `id_dietas`         | `VARCHAR(255)`|     |    |     |    |     |    |    |     |         | Descripción: Referencia(s) textual(es) a las dietas asociadas.<br>Naturaleza: Cualitativo.<br>Dominio: Texto. |
| `id_entrenador`     | `VARCHAR(255)`|     |    |     |    |     |    |    |     |         | Descripción: Identificador del entrenador asignado.<br>Naturaleza: Cualitativo.<br>Dominio: Texto. |
| `id_user`           | `INT`         |     | ✅ |     |    |     | ✅ |    |     |         | Descripción: Identificador del usuario que sigue el programa.<br>Naturaleza: Numérico.<br>Dominio: Llave foránea hacia `tbb_usuarios.id`. |
| `fecha_registro`    | `DATETIME`    |     |    | ✅  |    |     |    |    |     |         | Descripción: Fecha y hora en que fue creado el programa.<br>Naturaleza: Temporal. |
| `fecha_actualizacion`| `DATETIME`   |     |    |     |    |     |    |    |     |         | Descripción: Última fecha de modificación del programa.<br>Naturaleza: Temporal. |

---

### 📘 Diccionario de Datos: Tabla `tbd_programas_saludables`

| **Nombre del Campo**      | **Tipo de Dato** | **Tamaño / Formato**      | **Nulo** | **Descripción**                                                             |
|---------------------------|------------------|----------------------------|----------|------------------------------------------------------------------------------|
| `id`                      | INTEGER          | Autoincremental            | No       | Identificador único del programa saludable.                                 |
| `nombre`                  | VARCHAR           | Hasta 255 caracteres       | No       | Nombre que identifica el programa.                                          |
| `descripcion`             | VARCHAR           | Hasta 500 caracteres       | Sí       | Información detallada sobre el programa.                                    |
| `fecha_inicio`            | DATETIME          | AAAA-MM-DD HH:MM:SS        | No       | Fecha en la que comienza el programa.                                       |
| `fecha_finalizacion`      | DATETIME          | AAAA-MM-DD HH:MM:SS        | Sí       | Fecha de término del programa.                                              |
| `id_dietas`               | VARCHAR           | Hasta 255 caracteres       | Sí       | Referencia(s) a dietas relacionadas.                                        |
| `id_entrenador`           | VARCHAR           | Hasta 255 caracteres       | Sí       | Identificador del entrenador asignado.                                      |
| `id_user`                 | INTEGER           | Numérico                   | Sí       | Llave foránea que indica el usuario asignado.                               |
| `fecha_registro`          | DATETIME          | AAAA-MM-DD HH:MM:SS        | No       | Fecha en la que se registró el programa.                                    |
| `fecha_actualizacion`     | DATETIME          | AAAA-MM-DD HH:MM:SS        | Sí       | Fecha de la última actualización.                                           |

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
