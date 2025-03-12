## 🗂️ Table: `tbb_cirugias`

**📝 Description**: Esta tabla almacenará la información de las cirugías realizadas en el sistema. Representa una superentidad, ya que sus datos serán heredados por subentidades que detallan tipos específicos de cirugías o procedimientos médicos asociados.

### 🗄️ Columns

| Column | DataType | PK | FK | NN | UQ | BIN | UN | ZF | AI | Default | Comment |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `ID` | `CHAR(36)` | 🔑 |  | 🚫 |  |  |  |  |  |  | Descripción: Identificador principal del conjunto de registros.\<br>Naturaleza: Cuantitativo\<br>Dominio: Carácteres   Hexadecimal (0-F)\<br>Compocición:  8(0-F)4+'-'+4(0-F)4+'-'+4(0-F)4+'-'+4(0-F)4+'-'+'-'+12(0-F)11 |
| `Paciente_ID` | `CHAR(36)` |  |  | 🚫 |  |  |  |  |  |  | Descripción: Identificador único del paciente al que se le realiza la cirugía.<br>Naturaleza: Alfanumérico.<br>Dominio: UUID en formato CHAR(36), representado en notación hexadecimal.<br>Composición: 8(0-F)4+'-'+4(0-F)4+'-'+4(0-F)4+'-'+4(0-F)4+'-'+12(0-F)11. |
| `Espacio_Medico_ID` | `CHAR(36)` |  |  | 🚫 |  |  |  |  |  |  | Descripción: Identificador único del espacio médico donde se realiza la cirugía.<br>Naturaleza: Alfanumérico.<br>Dominio: UUID en formato CHAR(36), representado en notación hexadecimal.<br>Composición: 8(0-F)4+'-'+4(0-F)4+'-'+4(0-F)4+'-'+4(0-F)4+'-'+12(0-F)11. |
| `Tipo` | `VARCHAR(50)` |  |  | 🚫 |  |  |  |  |  |  | Descripción: Categoría o clasificación de la cirugía realizada.<br>Naturaleza: Cualitativo.<br>Dominio: Cadena de texto con un máximo de 50 caracteres (VARCHAR(50)).<br>Composición: Texto descriptivo que define el tipo de cirugía, como "Cirugía General", "Cardiovascular", "Neurocirugía", "Ortopédica", entre otros. |
| `Nombre` | `VARCHAR(100)` |  |  | 🚫 |  |  |  |  |  |  | Descripción: Denominación específica de la cirugía realizada.<br>Naturaleza: Cualitativo.<br>Dominio: Cadena de texto con un máximo de 100 caracteres (VARCHAR(100)).<br>Composición: Texto descriptivo que indica el nombre exacto de la cirugía, como "Apendicectomía", "Bypass Coronario", "Reemplazo de Cadera", "Craneotomía", entre otros. |
| `Descripcion` | `TEXT` |  |  | 🚫 |  |  |  |  |  |  | Descripción: Detalles adicionales sobre la cirugía realizada.<br>Naturaleza: Cualitativo.<br>Dominio: Texto libre (TEXT).<br>Composición: Composición: (a-z\|A-Z). |
| `Nivel_Urgencia` | `ENUM('Bajo', 'Medio', 'Alto')` |  |  | 🚫 |  |  |  |  |  |  | Descripción: Grado de prioridad con el que debe realizarse la cirugía.\<br>\<br>Naturaleza: Cualitativo.\<br>\<br>Dominio: Enumeración (ENUM('Bajo', 'Medio', 'Alto')).\<br>\<br>Composición: 0("Bajo"\|"Medio"\|"Alto")5 |
| `Observaciones` | `TEXT` |  |  | 🚫 |  |  |  |  |  |  | Descripción: Notas adicionales sobre la cirugía, registradas por el personal médico para detallar aspectos relevantes del procedimiento.<br>Naturaleza: Cualitativo.<br>Dominio: Caracteres alfanumericos.<br>Composición: 0(cadena de caracteres)∞ |
| `Estatus` | `ENUM('Programada', 'En curso', 'Completada', 'Cancelada')` |  |  | 🚫 |  |  |  |  |  |  | Descripción: Estado actual de la cirugía dentro del sistema, indicando su progreso o finalización.<br>Naturaleza: Cualitativo.<br>Dominio: Caracteres Alfabeticos<br>Composición: 0("Programada" \| "En curso" \| "Completada" \| "Cancelada")4 |
| `Fecha_Registro` | `TIMESTAMP` |  |  | 🚫 |  |  |  |  |  | `CURRENT_TIMESTAMP` | Descripción: Momento en que se registró la cirugía en el sistema.<br>Naturaleza: Cuantitativo.<br>Dominio: Formato de fecha y hora (TIMESTAMP).<br>Composición: (YYYY-MM-DD HH:MM:SS) |
| `Fecha_Actualizacion` | `DATETIME` |  |  | 🚫 |  |  |  |  |  |  | Descripción: Última modificación realizada en el registro de la cirugía.<br>Naturaleza: Cuantitativo.<br>Dominio: Formato de fecha y hora (DATETIME).<br>Composición: YYYY-MM-DD HH:MM:SS |


### 🔑 Indices

| Name | Columns | Type | Description |
| --- | --- | --- | --- |
| `PRIMARY` | `ID` | PRIMARY |  |
| `fk_paciente_idx` | `Paciente_ID` | INDEX |  |
| `fk_espacio_idx` | `Espacio_Medico_ID` | INDEX |  |
