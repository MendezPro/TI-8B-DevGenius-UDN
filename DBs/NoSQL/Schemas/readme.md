# 📁 Schemas ![MongoDB](https://img.shields.io/badge/MongoDB-%234ea94b.svg?style=for-the-badge&logo=mongodb&logoColor=white)

## 📌 Descripción  
Esta carpeta (**Schemas**) contiene los **esquemas de datos** utilizados para definir la estructura de los documentos almacenados en la base de datos NoSQL. Los archivos dentro de esta carpeta especifican las **validaciones**, **tipos de datos** y **relaciones** de los documentos, adaptados a la naturaleza flexible y escalable de las bases de datos NoSQL. Estos esquemas son esenciales para garantizar que los documentos cumplan con los requisitos de integridad, eficiencia y rendimiento de la base de datos.

## Estructura de archivos 📂

>|- DBs<br>
>&nbsp;&nbsp;| - NoSQL<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- Backups<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- Diagrams<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- Models<br>
>&nbsp;&nbsp; &nbsp;&nbsp;**|- Schemas 📂**<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- Queries<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- Scripts<br>
>|- Deliverables<br>
>|- Docs<br>
>|- imgs<br>
>|- Prototypes<br>
>|- QA<br>

## 📌 Tipos de Esquemas  
🔹 **Esquemas de Usuarios**  
Define la estructura de los documentos relacionados con los usuarios, incluyendo validaciones como el correo electrónico, la contraseña y las fechas de creación.  
Ejemplo (MongoDB con Mongoose):  
```javascript
const mongoose = require('mongoose');

const userSchema = new mongoose.Schema({
  nombre: { type: String, required: true },
  correo: { type: String, required: true, unique: true, match: /.+\@.+\..+/ },
  contrasena: { type: String, required: true },
  fecha_creacion: { type: Date, default: Date.now },
});

module.exports = mongoose.model('User', userSchema);
```

🔹 **Esquemas de Rutinas de Ejercicio**  
Define la estructura de los documentos relacionados con las rutinas de ejercicio. Incluye información como los ejercicios, la duración, frecuencia, y los objetivos.  
Ejemplo:  
```javascript
const mongoose = require('mongoose');

const rutinaSchema = new mongoose.Schema({
  nombre: { type: String, required: true },
  ejercicios: [{ type: mongoose.Schema.Types.ObjectId, ref: 'Ejercicio' }],
  id_usuario: { type: mongoose.Schema.Types.ObjectId, ref: 'User' },
  objetivo: { type: String, enum: ['Aumento de masa muscular', 'Pérdida de peso', 'Mantenimiento'], required: true },
  duracion: { type: Number, required: true }, // Duración en horas
  frecuencia: { type: Number, required: true }, // Días a la semana
  fecha_inicio: { type: Date, required: true },
  fecha_finalizacion: { type: Date, required: false },
});

module.exports = mongoose.model('Rutina', rutinaSchema);
```

🔹 **Esquemas de Dietas**  
Define la estructura de los documentos relacionados con las dietas. Los esquemas pueden incluir campos como las calorías diarias, tipo de dieta y observaciones.  
Ejemplo:  
```javascript
const mongoose = require('mongoose');

const dietaSchema = new mongoose.Schema({
  nombre: { type: String, required: true },
  objetivo: { type: String, enum: ['Perdida de Peso', 'Aumento de masa muscular', 'Mantenimiento'], required: true },
  calorias_diarias: { type: Number, required: true },
  tipo_ejercicio: { type: String, enum: ['Cardio', 'Levantamiento de pesas', 'Ejercicios Técnicos'], required: true },
  dias_ejercicio: { type: String, enum: ['1 dia a la semana', '2 dias a la semana', '3 dias a la semana', '4 dias a la semana', '5 dias a la semana'], required: true },
  observaciones: { type: String, default: '' },
  fecha_registro: { type: Date, default: Date.now },
});

module.exports = mongoose.model('Dieta', dietaSchema);
```

## 📌 Buenas Prácticas  
🔹 **Validación de Datos**  
Cada campo debe ser validado para asegurar que los datos ingresados sean correctos y consistentes. Utiliza tipos de datos apropiados y valida entradas como fechas, correos electrónicos, etc.

🔹 **Normalización de Datos**  
Si bien NoSQL permite estructuras flexibles, es importante evitar el almacenamiento de datos redundantes. Asegúrate de que los documentos sigan un esquema adecuado para evitar inconsistencias.

🔹 **Relaciones entre Documentos**  
En bases de datos NoSQL, las relaciones pueden modelarse utilizando referencias (como en los esquemas anteriores, usando `ref`). Asegúrate de establecer relaciones claras entre los documentos cuando sea necesario.

🔹 **Usar Esquemas con Mongoose o Frameworks Similares**  
Si trabajas con MongoDB y Node.js, Mongoose es una excelente herramienta para definir esquemas y realizar validaciones. Usar estas herramientas te permitirá mantener la calidad y coherencia de los datos.

## 👥 Equipo de Desarrollo  

| Integrante | Contacto | Rol | Observaciones |
|------------|----------|----------------------------|------------------|
| **Orlando Méndez Montes** | [@MendezPro](https://github.com/MendezPro) | Líder de Desarrollo, Frontend y Backend | ✅ Revisado y aprobado |
| **Zamira Cuevas Zamora** | [@ZamyCuevas](https://github.com/ZamyCuevas) | Documentación técnica | ❌ Sin Comentarios |
| **Julia Maday Martinez Santos** | [@JuliaMaday](https://github.com/JuliaMaday) | Desarrollador de Bases de Datos | ❌ Sin Comentarios |
| **Esperanza Cruz Galindo** | [@Dulce990](https://github.com/Dulce990) | Desarrollador FrontEnd | ❌ Sin Comentarios |

### ✒️ **Datos del Autor** 

**Creado por:** [@ZamyCuevas](https://github.com/ZamyCuevas)  
