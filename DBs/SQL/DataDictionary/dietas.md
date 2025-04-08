## 🗂️ Table: `tbd_dietas`

**📝 Description**: Esta tabla almacena la información de las dietas asignadas a los usuarios, incluyendo el objetivo nutricional, tipo y frecuencia de ejercicios recomendados, consumo calórico diario y observaciones. Sirve como base para personalizar planes alimenticios en función del estado físico y metas del usuario.

### 🗄️ Columns

| Column | DataType | PK | FK | NN | UQ | BIN | UN | ZF | AI | Default | Comment |
|--------|----------|----|----|----|----|-----|----|----|----|---------|---------|
| `id` | `INT` | 🔑 |  | ✅ |  |  | ✅ |  | ✅ |  | Descripción: Identificador único de la dieta.<br>Naturaleza: Numérico.<br>Dominio: Entero positivo autoincrementable. |
| `objetivo` | `ENUM('Perdida de Peso', 'Aumento de masa muscular', 'Mantenimiento')` |  |  | ✅ |  |  |  |  |  |  | Descripción: Objetivo principal de la dieta.<br>Naturaleza: Cualitativo.<br>Dominio: Enumeración de valores predefinidos.<br>Composición: 0("Perdida de Peso" \| "Aumento de masa muscular" \| "Mantenimiento") |
| `tipo_ejercicios_recomendados` | `ENUM('Cardio', 'Levantamiento de pesas', 'Ejercicios Tecnicos')` |  |  | ✅ |  |  |  |  |  |  | Descripción: Tipo de ejercicios recomendados con la dieta.<br>Naturaleza: Cualitativo.<br>Dominio: Enumeración (ENUM).<br>Composición: 0("Cardio" \| "Levantamiento de pesas" \| "Ejercicios Técnicos") |
| `dias_ejercicio` | `ENUM('1 dia a la semana', '2 dias a la semana', '3 dias a la semana', '4 dias a la semana', '5 dias a la semana')` |  |  | ✅ |  |  |  |  |  |  | Descripción: Frecuencia semanal recomendada de ejercicio físico.<br>Naturaleza: Cualitativo.<br>Dominio: Enumeración de días por semana. |
| `calorias_diarias` | `FLOAT` |  |  | ✅ |  |  | ✅ |  |  |  | Descripción: Cantidad de calorías diarias recomendadas.<br>Naturaleza: Cuantitativo.<br>Dominio: Número decimal positivo. |
| `observaciones` | `TEXT` |  |  |  |  |  |  |  |  |  | Descripción: Comentarios adicionales sobre la dieta.<br>Naturaleza: Cualitativo.<br>Dominio: Texto libre (a-z\|A-Z). |
| `estatus` | `BOOLEAN` |  |  | ✅ |  | ✅ |  |  |  | `TRUE` | Descripción: Indica si la dieta está activa (TRUE) o inactiva (FALSE).<br>Naturaleza: Binario.<br>Dominio: 1 bit (0 o 1). |
| `fecha_registro` | `DATETIME` |  |  | ✅ |  |  |  |  |  | `CURRENT_TIMESTAMP` | Descripción: Fecha y hora en que se registró la dieta.<br>Naturaleza: Cuantitativo.<br>Dominio: Formato de fecha y hora (YYYY-MM-DD HH:MM:SS). |
| `fecha_actualizacion` | `DATETIME` |  |  |  |  |  |  |  |  | `CURRENT_TIMESTAMP` (on update) | Descripción: Fecha y hora de la última actualización de la dieta.<br>Naturaleza: Cuantitativo.<br>Dominio: Formato de fecha y hora (YYYY-MM-DD HH:MM:SS). |
| `user_id` | `INT` |  | ✅ |  |  |  | ✅ |  |  |  | Descripción: Identificador del usuario asociado a la dieta.<br>Naturaleza: Numérico.<br>Dominio: Entero positivo que actúa como llave foránea hacia `tbb_usuarios.id`. |

---

### 📘 Diccionario de Datos: Tabla `tbd_dietas`

| **Nombre del Campo**           | **Tipo de Dato** | **Tamaño / Formato**                                 | **Nulo** | **Descripción**                                                                 |
|--------------------------------|------------------|------------------------------------------------------|----------|----------------------------------------------------------------------------------|
| `id`                           | INTEGER          | Autoincremental                                      | No       | Identificador único de la dieta registrada en el sistema.                       |
| `objetivo`                     | ENUM             | 'Perdida de Peso' \| 'Aumento de masa muscular' \| 'Mantenimiento' | No       | Objetivo nutricional principal del usuario.                                     |
| `tipo_ejercicios_recomendados`| ENUM             | 'Cardio' \| 'Levantamiento de pesas' \| 'Ejercicios Técnicos' | No       | Tipo de ejercicios sugeridos para complementar la dieta.                        |
| `dias_ejercicio`              | ENUM             | '1 dia a la semana' a '5 dias a la semana'           | No       | Frecuencia semanal de ejercicio recomendada.                                    |
| `calorias_diarias`            | FLOAT            | Número decimal                                       | No       | Cantidad recomendada de calorías a consumir por día.                            |
| `observaciones`               | TEXT             | -                                                    | Sí       | Comentarios u observaciones adicionales sobre la dieta.                         |
| `estatus`                     | BOOLEAN          | 0 (Inactivo) / 1 (Activo)                            | No       | Indica si la dieta está activa o no.                                            |
| `fecha_registro`              | DATETIME         | AAAA-MM-DD HH:MM:SS                                  | No       | Fecha y hora en que fue registrada la dieta.                                    |
| `fecha_actualizacion`         | DATETIME         | AAAA-MM-DD HH:MM:SS                                  | Sí       | Fecha y hora de la última actualización de la dieta.                            |
| `user_id`                     | INTEGER          | -                                                    | Sí       | ID del usuario asociado a la dieta. (Llave foránea a la tabla de usuarios).     |

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
