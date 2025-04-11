
## 🗂️ Table: `expediente_medico`

**📝 Description**: Esta tabla almacena el expediente médico de los usuarios, incluyendo información general de salud como presión arterial, peso, altura y antecedentes médicos. Este modelo sirve como base para registrar el historial clínico de un paciente dentro del sistema.

### 🗄️ Columns

| Column                        | DataType      | PK  | FK  | NN  | UQ  | BIN | UN  | ZF  | AI  | Default            | Comment |
|------------------------------|---------------|-----|-----|-----|-----|-----|-----|-----|-----|---------------------|---------|
| `id`                         | INT           | ✅  |     | ✅  |     |     | ✅  |     | ✅  |                     | **Descripción:** Identificador único del expediente médico. <br>**Naturaleza:** Cuantitativa <br>**Dominio:** Enteros positivos <br>**Composición:** 1{0-9} |
| `Nombre`                     | VARCHAR(50)   |     |     | ✅  |     |     |     |     |     |                     | **Descripción:** Nombre legal de la persona. <br>**Naturaleza:** Cualitativa <br>**Dominio:** Caracteres alfabéticos y espacios <br>**Composición:** 0{A-Z|a-z| |}80 |
| `Apellido`                   | VARCHAR(50)   |     |     | ✅  |     |     |     |     |     |                     | **Descripción:** Apellido legal de la persona. <br>**Naturaleza:** Cualitativa <br>**Dominio:** Caracteres alfabéticos y espacios <br>**Composición:** 0{A-Z|a-z| |}80 |
| `Fecha_Nacimiento`          | DATE          |     |     | ✅  |     |     |     |     |     |                     | **Descripción:** Fecha de nacimiento. <br>**Naturaleza:** Cuantitativa <br>**Dominio:** Fechas válidas <br>**Composición:** YYYY-MM-DD |
| `Sexo`                       | ENUM(...)     |     |     | ✅  |     |     |     |     |     |                     | **Descripción:** Género biológico. <br>**Naturaleza:** Cualitativa <br>**Dominio:** ['Masculino', 'Femenino', 'Otro'] <br>**Composición:** Valor de la lista |
| `Curp`                       | VARCHAR(18)   |     |     | ✅  | ✅  |     |     |     |     |                     | **Descripción:** Clave Única de Registro de Población. <br>**Naturaleza:** Cualitativa <br>**Dominio:** CURP oficial <br>**Composición:** ^[A-Z]{4}\\d{6}[HM][A-Z]{5}[A-Z0-9]{2}$ |
| `Fecha_registro`            | TIMESTAMP     |     |     | ✅  |     |     |     |     |     | CURRENT_TIMESTAMP  | **Descripción:** Fecha de creación del registro. <br>**Naturaleza:** Cuantitativa <br>**Dominio:** Fecha y hora <br>**Composición:** YYYY-MM-DD HH:MM:SS |
| `Direccion`                  | VARCHAR(255)  |     |     |     |     |     |     |     |     |                     | **Descripción:** Lugar de residencia. <br>**Naturaleza:** Cualitativa <br>**Dominio:** Texto <br>**Composición:** [Calle, Número, Colonia, Ciudad, Estado, CP, País] |
| `Telefono`                   | VARCHAR(15)   |     |     |     |     |     |     |     |     |                     | **Descripción:** Número telefónico. <br>**Naturaleza:** Cualitativa <br>**Dominio:** Texto <br>**Composición:** [País, Área, Número, Extensión] |
| `Correo_electronico`        | VARCHAR(100)  |     |     |     |     |     |     |     |     |                     | **Descripción:** Correo electrónico personal. <br>**Naturaleza:** Cualitativa <br>**Dominio:** Texto <br>**Composición:** [usuario@dominio.ext] |
| `Fecha_ultima_de_evaluacion`| DATE          |     |     | ✅  |     |     |     |     |     |                     | **Descripción:** Última fecha de evaluación médica. <br>**Naturaleza:** Cuantitativa <br>**Dominio:** Fecha válida <br>**Composición:** YYYY-MM-DD |
| `Antecedentes_medicos`      | TEXT          |     |     |     |     |     |     |     |     |                     | **Descripción:** Historial médico previo. <br>**Naturaleza:** Cualitativa <br>**Dominio:** Texto libre <br>**Composición:** Enfermedades, alergias, etc. |
| `Lesiones_previas`          | TEXT          |     |     | ✅  |     |     |     |     |     |                     | **Descripción:** Registro de lesiones anteriores. <br>**Naturaleza:** Cualitativa <br>**Dominio:** Texto libre <br>**Composición:** Tipo, Fecha, Tratamiento, Estado |
| `Presion_arterial`          | VARCHAR(20)   |     |     |     |     |     |     |     |     |                     | **Descripción:** Medición de presión arterial. <br>**Naturaleza:** Cualitativa <br>**Dominio:** Texto <br>**Composición:** [Sistólica/Diastólica] |
| `Estatura`                  | DECIMAL(5,2)  |     |     |     |     |     | ✅  |     |     |                     | **Descripción:** Altura en metros. <br>**Naturaleza:** Cuantitativa <br>**Dominio:** Números decimales positivos <br>**Composición:** Estatura = Valor + Unidad (cm) |
| `Peso`                      | DECIMAL(5,2)  |     |     |     |     |     | ✅  |     |     |                     | **Descripción:** Peso en kilogramos. <br>**Naturaleza:** Cuantitativa <br>**Dominio:** Números decimales positivos <br>**Composición:** Peso = Valor + Unidad (kg) |
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