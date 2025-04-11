## 🗂️ Table: `tbd_indicadores_nutricionales`

**📝 Description**: Esta tabla almacena información sobre los indicadores nutricionales clave de cada usuario, como altura, peso, IMC, porcentaje de grasa corporal y nivel de actividad física. Estos datos son fundamentales para evaluar el estado nutricional actual del usuario y personalizar recomendaciones alimenticias y rutinas de ejercicio.

### 🗄️ Columns

| Column               | DataType   | PK  | FK  | NN  | UQ  | BIN  | UN  | ZF  | AI  | Default             | Comment                                                                                                                                                                                                                           |
|----------------------|------------|-----|-----|-----|-----|------|-----|-----|-----|---------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `ID`                 | `INT`      | ✅  |     | ✅  |     |      |     |     | ✅  | `AUTO_INCREMENT`    | Descripción: Atributo identificador entero auto incremento que distingue de manera única a cada registro de indicadores nutricionales.<br> Naturaleza: Cuantitativa.<br> Dominio: Enteros Positivos.<br> Composición: 1{0-9}. |
| `Altura`             | `FLOAT`    |     |     | ✅  |     |      | ✅  |     |     |                     | Descripción: Altura del usuario expresada en metros, utilizada para el cálculo del índice de masa corporal (IMC).<br> Naturaleza: Cuantitativa.<br> Dominio: Números decimales con punto flotante.<br> Composición: 1{0-2}.{0-9}{2}. |
| `Peso`               | `FLOAT`    |     |     | ✅  |     |      | ✅  |     |     |                     | Descripción: Peso del usuario expresado en kilogramos, utilizado en la evaluación nutricional y cálculo del índice de masa corporal (IMC).<br> Naturaleza: Cuantitativa.<br> Dominio: Números decimales con punto flotante.<br> Composición: 1{0-9}.{0-9}{2}. |
| `Imc`                | `FLOAT`    |     |     | ✅  |     |      | ✅  |     |     |                     | Descripción: Índice de Masa Corporal (IMC), calculado en función del peso y la altura del usuario para evaluar su composición corporal.<br> Naturaleza: Cuantitativa.<br> Dominio: Números decimales con punto flotante.<br> Composición: 1{0-9}.{0-9}{2}. |
| `Porcentaje_grasa`   | `FLOAT`    |     |     | ✅  |     |      | ✅  |     |     |                     | Descripción: Porcentaje de grasa corporal del usuario, utilizado para evaluar su nivel de composición corporal y estado físico.<br> Naturaleza: Cuantitativa.<br> Dominio: Números decimales con punto flotante.<br> Composición: 1{0-9}.{0-9}{2}. |
| `Nivel_actividad`    | `ENUM`     |     |     | ✅  |     |      |     |     |     |                     | Descripción: Clasificación del nivel de actividad física del usuario, basada en una escala de cinco niveles: Sedentario, Ligero, Moderado, Activo y Muy Activo.<br> Naturaleza: Cualitativa.<br> Dominio: Valores enumerados { 'Sedentario', 'Ligero', 'Moderado', 'Activo', 'Muy_Activo' }. <br> Composición: Uno de los valores definidos en el conjunto ENUM. |
| `Fecha_Registro`     | `DATETIME` |     |     | ✅  |     |      |     |     |     | `CURRENT_TIMESTAMP` | Descripción: Dato de auditoría que documenta la fecha y hora de creación del registro.<br> Naturaleza: Cuantitativa.<br> Dominio: Fecha y Hora.<br> Composición: Año = 4{0-9}, Mes = [01–12], Día = [01–31], Hora = [00–23], Minuto = [00–59], Segundo = [00–59]. |
| `Fecha_Actualizacion`| `DATETIME` |     |     |     |     |      |     |     |     |                     | Descripción: Dato de auditoría que documenta la fecha y hora de la última modificación del registro.<br> Naturaleza: Cuantitativa.<br> Dominio: Fecha y Hora.<br> Composición: Año = 4{0-9}, Mes = [01–12], Día = [01–31], Hora = [00–23], Minuto = [00–59], Segundo = [00–59]. |
| `Usuario_Id`         | `INT`      |     | ✅  |     |     |      | ✅  |     |     |                     | Descripción: Identificador del usuario al que pertenecen los indicadores nutricionales, permitiendo su asociación con la información personal registrada en el sistema.<br> Naturaleza: Cuantitativa.<br> Dominio: Enteros Positivos.<br> Composición: 1{0-9}. |

## 👥 Equipo de Desarrollo  

| Integrante | Contacto | Rol | Observaciones |
|------------|----------|----------------------------|------------------|
| **Orlando Méndez Montes** | [@MendezPro](https://github.com/MendezPro) | Líder de Desarrollo, Frontend y Backend | ✅ Revisado y aprobado |
| **Zamira Cuevas Zamora** | [@ZamyCuevas](https://github.com/ZamyCuevas) | Documentación técnica | ❌ Sin Comentarios |
| **Julia Maday Martinez Santos** | [@JuliaMaday](https://github.com/JuliaMaday) | Desarrollador de Bases de Datos | ❌ Sin Comentarios |
| **Esperanza Cruz Galindo** | [@Dulce990](https://github.com/Dulce990) | Desarrollador FrontEnd | ❌ Sin Comentarios |

### ✒️ **Datos del Autor**

**Creado por:** [@ZamyCuevas](https://github.com/ZamyCuevas)

