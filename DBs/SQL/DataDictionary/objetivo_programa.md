## 🗂️ Table: `tbc_objetivo_programa`

**📝 Description**: Esta tabla contiene los objetivos definidos para los programas de entrenamiento o nutrición dentro del sistema. Cada objetivo está compuesto por un nombre descriptivo, una explicación detallada y un estado que indica si el objetivo está activo o no. Es clave para categorizar y personalizar planes según las metas del usuario.

### 🗄️ Columns

| Column              | DataType      | PK  | FK | NN  | UQ | BIN | UN | ZF | AI  | Default                          | Comment |
|---------------------|---------------|-----|----|-----|----|-----|----|----|-----|----------------------------------|---------|
| `id`                | `INT`         | 🔑  |    | ✅  |    |     | ✅ |    | ✅  |                                  | Descripción: Identificador único del objetivo del programa.<br>Naturaleza: Numérico.<br>Dominio: Entero positivo autoincrementable. |
| `nombre`            | `VARCHAR(255)`|     |    | ✅  |    |     |    |    |     |                                  | Descripción: Nombre del objetivo.<br>Naturaleza: Cualitativo.<br>Dominio: Texto de hasta 255 caracteres. |
| `descripcion`       | `VARCHAR(500)`|     |    | ✅  |    |     |    |    |     |                                  | Descripción: Detalle del objetivo del programa.<br>Naturaleza: Cualitativo.<br>Dominio: Texto de hasta 500 caracteres. |
| `estado`            | `INT`         |     |    | ✅  |    | ✅  | ✅ |    |     |                                  | Descripción: Indica si el objetivo está activo (1) o inactivo (0).<br>Naturaleza: Binario.<br>Dominio: 0 o 1. |
| `fecha_registro`    | `DATETIME`    |     |    |     |    |     |    |    |     | `CURRENT_TIMESTAMP`              | Descripción: Fecha y hora de registro del objetivo.<br>Naturaleza: Cuantitativo.<br>Dominio: Formato datetime. |
| `fecha_actualizacion` | `DATETIME`  |     |    |     |    |     |    |    |     | `CURRENT_TIMESTAMP` (on update) | Descripción: Fecha de última modificación.<br>Naturaleza: Cuantitativo.<br>Dominio: Formato datetime. |

---

### 📘 Diccionario de Datos: Tabla `tbc_objetivo_programa`

| **Nombre del Campo**      | **Tipo de Dato** | **Tamaño / Formato**                 | **Nulo** | **Descripción**                                                             |
|---------------------------|------------------|--------------------------------------|----------|------------------------------------------------------------------------------|
| `id`                      | INTEGER          | Autoincremental                      | No       | Identificador único del objetivo en la base de datos.                       |
| `nombre`                  | VARCHAR           | Hasta 255 caracteres                 | No       | Nombre identificador del objetivo.                                          |
| `descripcion`             | VARCHAR           | Hasta 500 caracteres                 | No       | Descripción ampliada del objetivo del programa.                             |
| `estado`                  | INTEGER           | 0 (Inactivo) / 1 (Activo)            | No       | Determina si el objetivo está en uso actualmente.                           |
| `fecha_registro`          | DATETIME          | AAAA-MM-DD HH:MM:SS                  | Sí       | Fecha de creación del registro.                                             |
| `fecha_actualizacion`     | DATETIME          | AAAA-MM-DD HH:MM:SS (actualizable)   | Sí       | Última vez que se actualizó el objetivo.                                    |

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
