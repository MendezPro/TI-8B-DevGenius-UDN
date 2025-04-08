## 🗂️ Table: `tbd_indicadores_nutricionales`

**📝 Description**: Esta tabla almacena información sobre los indicadores nutricionales clave de cada usuario, como altura, peso, IMC, porcentaje de grasa corporal y nivel de actividad física. Estos datos son fundamentales para evaluar el estado nutricional actual del usuario y personalizar recomendaciones alimenticias y rutinas de ejercicio.

### 🗄️ Columns

| Column               | DataType                                                                 | PK  | FK | NN  | UQ | BIN | UN | ZF | AI  | Default                            | Comment |
|----------------------|--------------------------------------------------------------------------|-----|----|-----|----|-----|----|----|-----|-------------------------------------|---------|
| `id`                 | `INT`                                                                    | 🔑  |    | ✅  |    |     | ✅ |    | ✅  |                                     | Descripción: Identificador único del indicador nutricional.<br>Naturaleza: Numérico.<br>Dominio: Entero positivo autoincrementable. |
| `altura`             | `FLOAT`                                                                  |     |    | ✅  |    |     | ✅ |    |     |                                     | Descripción: Altura del usuario en metros.<br>Naturaleza: Cuantitativo.<br>Dominio: Número decimal positivo. |
| `peso`               | `FLOAT`                                                                  |     |    | ✅  |    |     | ✅ |    |     |                                     | Descripción: Peso corporal del usuario en kilogramos.<br>Naturaleza: Cuantitativo.<br>Dominio: Número decimal positivo. |
| `imc`                | `FLOAT`                                                                  |     |    | ✅  |    |     | ✅ |    |     |                                     | Descripción: Índice de masa corporal (IMC) del usuario.<br>Naturaleza: Cuantitativo.<br>Dominio: Número decimal calculado. |
| `porcentaje_grasa`   | `FLOAT`                                                                  |     |    | ✅  |    |     | ✅ |    |     |                                     | Descripción: Porcentaje estimado de grasa corporal.<br>Naturaleza: Cuantitativo.<br>Dominio: Número decimal entre 0 y 100. |
| `nivel_actividad`    | `ENUM('Sedentario', 'Ligero', 'Moderado', 'Activo', 'Muy_Activo')`       |     |    | ✅  |    |     |    |    |     |                                     | Descripción: Nivel de actividad física habitual del usuario.<br>Naturaleza: Cualitativo.<br>Dominio: Enumerado. |
| `fecha_registro`     | `DATETIME`                                                               |     |    | ✅  |    |     |    |    |     | `CURRENT_TIMESTAMP`                | Descripción: Fecha y hora de registro del indicador.<br>Naturaleza: Cuantitativo.<br>Dominio: Fecha y hora actual. |
| `fecha_actualizacion`| `DATETIME`                                                               |     |    |     |    |     |    |    |     | `CURRENT_TIMESTAMP` (on update)   | Descripción: Fecha y hora de la última actualización.<br>Naturaleza: Cuantitativo.<br>Dominio: Fecha y hora. |
| `usuario_id`         | `INT`                                                                    |     | ✅ |     |    |     | ✅ |    |     |                                     | Descripción: Identificador del usuario asociado.<br>Naturaleza: Numérico.<br>Dominio: Llave foránea hacia `tbb_usuarios.id`. |

---

### 📘 Diccionario de Datos: Tabla `tbd_indicadores_nutricionales`

| **Nombre del Campo**      | **Tipo de Dato** | **Tamaño / Formato**                                           | **Nulo** | **Descripción**                                                              |
|---------------------------|------------------|----------------------------------------------------------------|----------|-------------------------------------------------------------------------------|
| `id`                      | INTEGER          | Autoincremental                                                | No       | Identificador único del registro.                                            |
| `altura`                  | FLOAT            | Número decimal positivo (m)                                    | No       | Altura del usuario en metros.                                                |
| `peso`                    | FLOAT            | Número decimal positivo (kg)                                   | No       | Peso del usuario en kilogramos.                                              |
| `imc`                     | FLOAT            | Número decimal                                                 | No       | Índice de Masa Corporal calculado (kg/m²).                                   |
| `porcentaje_grasa`        | FLOAT            | Número decimal entre 0 y 100                                   | No       | Porcentaje estimado de grasa corporal.                                       |
| `nivel_actividad`         | ENUM             | 'Sedentario' \| 'Ligero' \| 'Moderado' \| 'Activo' \| 'Muy_Activo' | No       | Nivel de actividad física reportado.                                         |
| `fecha_registro`          | DATETIME         | AAAA-MM-DD HH:MM:SS                                            | No       | Fecha y hora en que se registró el indicador.                                |
| `fecha_actualizacion`     | DATETIME         | AAAA-MM-DD HH:MM:SS                                            | Sí       | Fecha y hora de la última modificación.                                      |
| `usuario_id`              | INTEGER          | -                                                              | Sí       | Llave foránea que conecta con el usuario correspondiente.                    |

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

