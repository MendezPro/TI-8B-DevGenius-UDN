## 🗂️ Table: `tbc_objetivo_programa`

**📝 Description**: Esta tabla contiene los objetivos definidos para los programas de entrenamiento o nutrición dentro del sistema. Cada objetivo está compuesto por un nombre descriptivo, una explicación detallada y un estado que indica si el objetivo está activo o no. Es clave para categorizar y personalizar planes según las metas del usuario.

### 🗄️ Columns

| Column              | DataType          | PK  | FK  | NN  | UQ  | BIN  | UN  | ZF  | AI  | Default           | Comment                                                                                                                                                                                                                           |
|---------------------|-------------------|-----|-----|-----|-----|------|-----|-----|-----|-------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `ID`                | `INT`             | ✅  |     | ✅  |     |      |     |     | ✅  | `AUTO_INCREMENT`  | Descripción: Identificador único de cada objetivo dentro del sistema.<br> Naturaleza: Cuantitativa.<br> Dominio: Números enteros positivos.<br> Composición: 1{0-9}.                                                                 |
| `nombre`            | `VARCHAR(100)`     |     |     | ✅  |     |      |     |     |     |                   | Descripción: Nombre descriptivo del objetivo.<br> Naturaleza: Cualitativa.<br> Dominio: Caracteres alfabéticos y espacios.<br> Composición: 1{A-Z|a-z| }100.                                                                           |
| `descripcion`       | `TEXT`            |     |     |     |     |      |     |     |     |                   | Descripción: Explicación detallada del objetivo.<br> Naturaleza: Cualitativa.<br> Dominio: Texto libre con una longitud variable.<br> Composición: 1{A-Z|a-z|0-9|, .-}∞.                                                           |
| `estado`            | `BIT(1)`          |     |     | ✅  |     |      |     |     |     | `b'1'`            | Descripción: Dato de auditoría que define el estado actual del registro, siendo 0 para datos no activos y 1 para datos activos en el sistema.<br> Naturaleza: Cuantitativo.<br> Dominio: Booleano.<br> Composición: {0|1}. |
| `fecha_registro`    | `DATETIME`        |     |     | ✅  |     |      |     |     |     | `CURRENT_TIMESTAMP` | Descripción: Fecha y hora en la que se registró el objetivo en la base de datos.<br> Naturaleza: Cuantitativa.<br> Dominio: Formato 'YYYY-MM-DD HH:MM:SS'.<br> Composición: Año = 4{0-9}, Mes = [01|02|...|12], Día = [01|02|...|31]. |
| `fecha_actualizacion`| `DATETIME`        |     |     |     |     |      |     |     |     |                   | Descripción: Fecha y hora de la última actualización del objetivo del programa.<br> Naturaleza: Cuantitativa.<br> Dominio: Fecha y hora en formato 'YYYY-MM-DD HH:MM:SS'.<br> Composición: Año = 4{0-9}, Mes = [01|02|...|12], Día = [01|02|...|31]. |

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
