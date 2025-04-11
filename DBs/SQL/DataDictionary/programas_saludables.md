## 🗂️ Table: `tbd_programas_saludables`

**📝 Description**: Esta tabla almacena la información de los programas saludables personalizados que se asignan a los usuarios. Incluye detalles como el nombre del programa, fechas de inicio y finalización, relaciones con dietas, entrenadores y usuarios, permitiendo así una gestión integral de rutinas y hábitos saludables.

### 🗄️ Columns

| Column               | DataType         | PK  | FK  | NN  | UQ  | BIN  | UN  | ZF  | AI  | Default            | Comment                                                                                                                                                                                                                               |
|----------------------|------------------|-----|-----|-----|-----|------|-----|-----|-----|--------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `id`                 | `INT`            | ✅  |     | ✅  |     |      |     |     | ✅  | `AUTO_INCREMENT`   | Descripción: Identificador único para cada programa saludable.<br> Naturaleza: Cuantitativa.<br> Dominio: Enteros Positivos.<br> Composición: 1{0-9}. |
| `nombre`             | `VARCHAR(255)`    |     |     | ✅  |     |      |     |     |     |                    | Descripción: Nombre del programa saludable.<br> Naturaleza: Cualitativa.<br> Dominio: Caracteres alfabéticos y espacios.<br> Composición: 1{A-Z a-z  }255. |
| `descripcion`        | `VARCHAR(500)`    |     |     |     |     |      |     |     |     |                    | Descripción: Explicación o detalles del programa saludable.<br> Naturaleza: Cualitativa.<br> Dominio: Texto libre con longitud variable.<br> Composición: 0{A-Z a-z 0-9 , .-}500. |
| `fecha_inicio`       | `DATETIME`       |     |     | ✅  |     |      |     |     |     |                    | Descripción: Fecha de inicio del programa saludable.<br> Naturaleza: Cuantitativa.<br> Dominio: Fecha y Hora.<br> Composición: Año = 4{0-9}, Mes = [01|02|...|12], Día = [01|02|...|31], Hora = [00|01|...|23], Minuto = [00 01 ... 59], Segundo = [00|01|...|59]. |
| `fecha_finalizacion` | `DATETIME`       |     |     |     |     |      |     |     |     |                    | Descripción: Fecha de finalización del programa saludable.<br> Naturaleza: Cuantitativa.<br> Dominio: Fecha y Hora.<br> Composición: Año = 4{0-9}, Mes = [01 02 ... 12], Día = [01 02 ... 31], Hora = [00 01 ... 23], Minuto = [00 01 ... 59], Segundo = [00 01 ... 59]. |
| `id_dietas`          | `INT`            |     | ✅  |     |     |      |     |     |     |                    | Descripción: Identificador de la dieta asociada al programa saludable.<br> Naturaleza: Cuantitativa.<br> Dominio: Enteros Positivos.<br> Composición: 1{0-9}. |
| `id_entrenador`      | `INT`            |     | ✅  |     |     |      |     |     |     |                    | Descripción: Identificador del entrenador asignado al programa saludable.<br> Naturaleza: Cuantitativa.<br> Dominio: Enteros Positivos.<br> Composición: 1{0-9}. |
| `id_user`            | `INT`            |     | ✅  |     |     |      |     |     |     |                    | Descripción: Identificador del usuario al que se le asigna el programa saludable.<br> Naturaleza: Cuantitativa.<br> Dominio: Enteros Positivos.<br> Composición: 1{0-9}. |
| `fecha_registro`     | `DATETIME`       |     |     | ✅  |     |      |     |     |     | `CURRENT_TIMESTAMP` | Descripción: Fecha y hora en la que se registró el programa saludable.<br> Naturaleza: Cuantitativa.<br> Dominio: Fecha y Hora.<br> Composición: Año = 4{0-9}, Mes = [01 02 ... 12], Día = [01 02 ... 31], Hora = [00 01 ... 23], Minuto = [00 01 ... 59], Segundo = [00 01 ... 59]. |
| `fecha_actualizacion`| `DATETIME`       |     |     |     |     |      |     |     |     |                    | Descripción: Fecha y hora de la última actualización del programa saludable.<br> Naturaleza: Cuantitativa.<br> Dominio: Fecha y Hora.<br> Composición: Año = 4{0-9}, Mes = [01 02 ... 12], Día = [01 02 ... 31], Hora = [00 01 ... 23], Minuto = [00 01 ... 59], Segundo = [00 01 ... 59]. |


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
