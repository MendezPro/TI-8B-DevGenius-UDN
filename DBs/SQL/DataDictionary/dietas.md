## 🗂️ Table: `tbd_dietas`

**📝 Description**: Esta tabla almacena la información de las dietas asignadas a los usuarios, incluyendo el objetivo nutricional, tipo y frecuencia de ejercicios recomendados, consumo calórico diario y observaciones. Sirve como base para personalizar planes alimenticios en función del estado físico y metas del usuario.

### 🗄️ Columns

| Column                   | DataType         | PK | FK | NN | UQ | BIN | UN | ZF | AI | Default          | Comment                                                                                                                                  |
|--------------------------|------------------|----|----|----|----|-----|----|----|----|------------------|------------------------------------------------------------------------------------------------------------------------------------------|
| `ID`                      | `INT`            | ✅  |    | ✅  |    |     |    |    | ✅  | `AUTO_INCREMENT` | Descripción: Atributo identificador entero auto incremental que distingue de manera única a cada dieta.                                    |
| `nombre`                  | `VARCHAR(45)`     |    |    | ✅  |    |     |    |    |    |                  | Descripción: Nombre de la dieta. Naturaleza: Cualitativa. Dominio: Caracteres alfanuméricos. Composición: 0{A-Z|a-z|0-9| }45.              |
| `Objetivo`                | `ENUM('Perdida de Peso', 'Aumento de masa muscular', 'Mantenimiento')` |    |    | ✅  |    |     |    |    |    |                  | Descripción: Objetivo principal de la dieta. Naturaleza: Cualitativa. Dominio: Conjunto de valores permitidos. Composición: ['Perdida de Peso', 'Aumento de masa muscular', 'Mantenimiento']. |
| `tipo_ejercicios_recomendados` | `ENUM('Cardio', 'Levantamiento de pesas', 'Ejercicios Técnicos')` |    |    | ✅  |    |     |    |    |    |                  | Descripción: Tipo de ejercicios recomendados para acompañar la dieta. Naturaleza: Cualitativa. Dominio: Conjunto de valores permitidos. Composición: ['Cardio', 'Levantamiento de pesas', 'Ejercicios Técnicos']. |
| `dias_ejercicio`          | `ENUM('1 dia a la semana', '2 dias a la semana', '3 dias a la semana', '4 dias a la semana', '5 dias a la semana')` |    |    | ✅  |    |     |    |    |    |                  | Descripción: Número de días recomendados para ejercicio en la semana. Naturaleza: Cualitativa. Dominio: Conjunto de valores permitidos. Composición: ['1 dia a la semana', '2 dias a la semana', '3 dias a la semana', '4 dias a la semana', '5 dias a la semana']. |
| `calorias_diarias`        | `DOUBLE`         |    |    | ✅  |    |     |    |    |    |                  | Descripción: Cantidad de calorías recomendadas por día. Naturaleza: Cuantitativo. Dominio: Número decimal positivo. Composición: Valor mayor a 0. |
| `observaciones`           | `LONGTEXT`       |    |    |    |    |     |    |    |    |                  | Descripción: Información adicional o recomendaciones sobre la dieta. Naturaleza: Cualitativa. Dominio: Texto libre. |
| `Estatus`                 | `BIT(1)`         |    |    | ✅  |    |     |    |    |    | `b'1'`           | Descripción: Estado de la dieta. 0 para inactiva, 1 para activa. Naturaleza: Cuantitativo. Dominio: Booleano. Composición: [0|1]. |
| `Fecha_Registro`          | `DATETIME`       |    |    | ✅  |    |     |    |    |    | `CURRENT_TIMESTAMP` | Descripción: Fecha y hora de creación del registro de la dieta. Naturaleza: Cuantitativo. Dominio: Fecha y hora en formato 'YYYY-MM-DD HH:MM:SS'. |
| `Fecha_Actualizacion`     | `DATETIME`       |    |    |    |    |     |    |    |    |                  | Descripción: Fecha y hora de la última actualización de la dieta. Naturaleza: Cuantitativo. Dominio: Fecha y hora en formato 'YYYY-MM-DD HH:MM:SS'. |

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
