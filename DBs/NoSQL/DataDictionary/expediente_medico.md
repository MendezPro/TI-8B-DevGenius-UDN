
## 🗂️ Table: `expediente_medico`

**📝 Description**: Esta tabla almacena el expediente médico de los usuarios, incluyendo información general de salud como presión arterial, peso, altura y antecedentes médicos. Este modelo sirve como base para registrar el historial clínico de un paciente dentro del sistema.

### 🗄️ Columns

| Column | DataType | PK | FK | NN | UQ | BIN | UN | ZF | AI | Default | Comment |
|--------|----------|----|----|----|----|-----|----|----|----|---------|---------|
| `curp` | `VARCHAR(18)` |  |  |  | ✅ |  |  |  |  |  | Descripción: Clave Única de Registro de Población del usuario.<br>Naturaleza: Alfanumérico.<br>Dominio: 18 caracteres alfanuméricos. |
| `fecha_ultima_de_evaluacion` | `DATE` |  |  |  |  |  |  |  |  |  | Descripción: Fecha de la última evaluación médica del paciente.<br>Naturaleza: Cuantitativo.<br>Dominio: Fecha en formato YYYY-MM-DD. |
| `antecedentes_medicos` | `TEXT` |  |  |  |  |  |  |  |  |  | Descripción: Información sobre enfermedades o condiciones médicas previas del paciente.<br>Naturaleza: Cualitativo.<br>Dominio: Texto libre. |
| `lesiones_previas` | `TEXT` |  |  |  |  |  |  |  |  |  | Descripción: Registro de lesiones que haya sufrido anteriormente el paciente.<br>Naturaleza: Cualitativo.<br>Dominio: Texto libre. |
| `presion_sistolica` | `INT` |  |  |  |  |  | ✅ |  |  |  | Descripción: Medida de la presión arterial sistólica del paciente.<br>Naturaleza: Cuantitativo.<br>Dominio: Número entero positivo. |
| `presion_diastolica` | `INT` |  |  |  |  |  | ✅ |  |  |  | Descripción: Medida de la presión arterial diastólica del paciente.<br>Naturaleza: Cuantitativo.<br>Dominio: Número entero positivo. |
| `estatura` | `FLOAT` |  |  |  |  |  | ✅ |  |  |  | Descripción: Estatura del paciente en metros.<br>Naturaleza: Cuantitativo.<br>Dominio: Número decimal positivo. |
| `peso` | `FLOAT` |  |  |  |  |  | ✅ |  |  |  | Descripción: Peso del paciente en kilogramos.<br>Naturaleza: Cuantitativo.<br>Dominio: Número decimal positivo. |
| `fecha_registro` | `TIMESTAMP` |  |  | ✅ |  |  |  |  |  | `CURRENT_TIMESTAMP` | Descripción: Fecha y hora en que se registró el expediente.<br>Naturaleza: Cuantitativo.<br>Dominio: Formato de fecha y hora (YYYY-MM-DD HH:MM:SS). |
| `usuario_id` | `INT` |  | ✅ |  |  |  | ✅ |  |  |  | Descripción: Identificador del usuario al que pertenece el expediente.<br>Naturaleza: Numérico.<br>Dominio: Entero positivo que corresponde a una llave foránea en la tabla de usuarios. |

---

### 📘 Diccionario de Datos: Tabla `expediente_medico`

| **Nombre del Campo**           | **Tipo de Dato** | **Tamaño / Formato** | **Nulo** | **Descripción**                                                                 |
|-------------------------------|------------------|-----------------------|----------|----------------------------------------------------------------------------------|
| `curp`                        | VARCHAR           | 18 caracteres aprox.  | Sí       | Clave Única de Registro de Población del paciente.                              |
| `fecha_ultima_de_evaluacion` | DATE              | AAAA-MM-DD            | Sí       | Fecha de la última evaluación médica registrada.                                |
| `antecedentes_medicos`       | TEXT              | -                     | Sí       | Información sobre enfermedades o condiciones médicas previas.                   |
| `lesiones_previas`           | TEXT              | -                     | Sí       | Registro de lesiones anteriores del paciente.                                   |
| `presion_sistolica`          | INTEGER           | -                     | Sí       | Valor de la presión arterial sistólica (en mmHg).                               |
| `presion_diastolica`         | INTEGER           | -                     | Sí       | Valor de la presión arterial diastólica (en mmHg).                              |
| `estatura`                   | FLOAT             | Metros                | Sí       | Estatura del paciente en metros.                                                |
| `peso`                       | FLOAT             | Kilogramos            | Sí       | Peso corporal del paciente en kilogramos.                                       |
| `fecha_registro`             | DATETIME          | AAAA-MM-DD HH:MM:SS   | No       | Fecha y hora en que se registró el expediente.                                  |
| `usuario_id`                 | INTEGER           | -                     | Sí       | ID del usuario relacionado con el expediente médico.                            |

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