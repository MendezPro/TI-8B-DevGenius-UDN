## 🗂️ Table: `tbc_ejercicios`

**📝 Description**: Esta tabla almacena información detallada sobre los ejercicios disponibles dentro del sistema, incluyendo su tipo, nivel de dificultad, recomendaciones, restricciones y estado. Sirve como base para construir rutinas de entrenamiento personalizadas para los usuarios.

### 🗄️ Columns

| Column                  | DataType                                        | PK  | FK  | NN  | UQ  | BIN  | UN  | ZF  | AI  | Default         | Comment                                                                                                                                   |
|-------------------------|-------------------------------------------------|-----|-----|-----|-----|------|-----|-----|-----|-----------------|-------------------------------------------------------------------------------------------------------------------------------------------|
| `ID`                     | `INT`                                           | ✅  |     | ✅  |     |      |     |     | ✅  | `AUTO_INCREMENT` | Descripción: Atributo identificador numérico incremental que distingue de manera única el ejercicio.<br> Naturaleza: Cuantitativo.<br> Dominio: Enteros positivos.<br> Composición: 1{0-9}. |
| `Nombre`                 | `VARCHAR(255)`                                  |     |     | ✅  |     |      |     |     |     |                 | Descripción: Valor que hace referencia al ejercicio.<br> Naturaleza: Cualitativa.<br> Dominio: Caracteres alfabéticos, vocales con tilde, espacio separador.<br> Composición: 0{A-Z|a-z|.}255. |
| `Descripcion`            | `VARCHAR(255)`                                  |     |     | ✅  |     |      |     |     |     |                 | Descripción: Explicación del ejercicio y cómo llevarlo a cabo.<br> Naturaleza: Cualitativa.<br> Dominio: Caracteres alfabéticos, vocales con tilde, espacio separador.<br> Composición: 0{A-Z|a-z|.}255. |
| `Video`                  | `VARCHAR(255)`                                  |     |     |     |     |      |     |     |     |                 | Descripción: Nombre y extensión del archivo de video referente a la realización del ejercicio.<br> Naturaleza: Cualitativa.<br> Dominio: Caracteres alfanuméricos y extensión permitida de video (e.g., .mp4, .avi).<br> Composición: Nombre_archivo + '.' + Extensión_archivo. |
| `Tipo`                   | `ENUM('Aerobico', 'Resistencia', 'Flexibilidad', 'Fuerza')` |     |     | ✅  |     |      |     |     |     |                 | Descripción: Tipo de ejercicio.<br> Naturaleza: Cualitativa.<br> Dominio: Conjunto de valores permitidos.<br> Composición: ['Aerobico', 'Resistencia', 'Flexibilidad', 'Fuerza']. |
| `Estatus`                | `TINYINT(1)`                                    |     |     | ✅  |     |      |     |     |     |                 | Descripción: Estado del ejercicio (activo o inactivo).<br> Naturaleza: Cualitativa.<br> Dominio: Valores 0 y 1.<br> Composición: {0|1}. |
| `Dificultad`             | `ENUM('Basico', 'Intermedio', 'Avanzado')`      |     |     | ✅  |     |      |     |     |     |                 | Descripción: Dificultad para realizar el ejercicio.<br> Naturaleza: Cualitativa.<br> Dominio: Conjunto de valores permitidos.<br> Composición: ['Basico', 'Intermedio', 'Avanzado']. |
| `Fecha_Registro`         | `DATETIME`                                      |     |     | ✅  |     |      |     |     |     |                 | Descripción: Fecha de registro del ejercicio en la base de datos.<br> Naturaleza: Cuantitativa.<br> Dominio: Fecha y hora en formato 'YYYY-MM-DD HH:MM:SS'.<br> Composición: Año = 4{0-9}4, Mes = [01|02|...|12], Día = [01|02|...|31]. |
| `Fecha_Actualizacion`    | `DATETIME`                                      |     |     | ✅  |     |      |     |     |     |                 | Descripción: Fecha de la última actualización del ejercicio en la base de datos.<br> Naturaleza: Cuantitativa.<br> Dominio: Fecha y hora en formato 'YYYY-MM-DD HH:MM:SS'.<br> Composición: Año = 4{0-9}4, Mes = [01|02|...|12], Día = [01|02|...|31]. |
| `Recomendaciones`        | `VARCHAR(255)`                                  |     |     |     |     |      |     |     |     |                 | Descripción: Recomendaciones para realizar el ejercicio.<br> Naturaleza: Cualitativa.<br> Dominio: Caracteres alfabéticos, vocales con tilde, espacio separador.<br> Composición: 0{A-Z|a-z|.}255. |
| `Restricciones`          | `VARCHAR(255)`                                  |     |     |     |     |      |     |     |     |                 | Descripción: Restricciones para realizar el ejercicio (e.g., tipo de ropa recomendada).<br> Naturaleza: Cualitativa.<br> Dominio: Caracteres alfabéticos, vocales con tilde, espacio separador.<br> Composición: 0{A-Z|a-z|.}255. |

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

