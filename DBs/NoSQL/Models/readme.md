# 📁 Models ![MongoDB](https://img.shields.io/badge/MongoDB-%234ea94b.svg?style=for-the-badge&logo=mongodb&logoColor=white)

## 📌 Descripción  
La carpeta **Models** contiene los **esquemas** y **estructuras de datos** diseñados para bases de datos **NoSQL**. Aquí se definen los **documentos**, **colecciones** y **relaciones** utilizados en el sistema, adaptados a la naturaleza flexible y escalable de las bases de datos NoSQL como MongoDB. Los modelos en esta carpeta son esenciales para garantizar que los documentos sigan una estructura coherente y que las relaciones entre ellos estén correctamente definidas.

## Estructura de archivos 📂

>|- DBs<br>
>&nbsp;&nbsp;| - NoSQL<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- Backups<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- Diagrams<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- **Models 📂**<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- Scripts<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- Queries<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- Schemas<br>
>|- Deliverables<br>
>|- Docs<br>
>|- imgs<br>
>|- Prototypes<br>
>|- QA<br>

## 📌 Tipos de Modelos  
🔹 **Modelos de Usuario**  
Definen la estructura de los documentos que contienen información sobre los usuarios del sistema. Aquí se especifican campos como el nombre, correo electrónico, contraseña, y cualquier otro dato relevante del usuario.  
Ejemplo de un modelo en **Mongoose (MongoDB)**:  
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

🔹 **Modelos de Rutinas**  
Definen cómo se estructuran los documentos relacionados con las rutinas de ejercicio. Estos modelos incluyen campos como el nombre de la rutina, los ejercicios asociados, la frecuencia y el objetivo de la rutina.  
Ejemplo de modelo de **Rutina**:  
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

🔹 **Modelos de Dieta**  
Define los documentos relacionados con las dietas. Los modelos de dieta incluyen campos como el tipo de dieta, las calorías diarias, el tipo de ejercicio recomendado y las observaciones sobre la dieta.  
Ejemplo de modelo de **Dieta**:  
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
🔹 **Uso de Mongoose o Librerías Similares**  
Utiliza **Mongoose** o librerías similares para definir esquemas y modelos de manera estructurada. Esto no solo simplifica la validación de datos, sino que también facilita las consultas y las relaciones entre colecciones.

🔹 **Refactorización de Modelos**  
Es recomendable dividir los modelos grandes en modelos más pequeños y modulares si el proyecto crece. Esto mejora la mantenibilidad y reutilización de los modelos.

🔹 **Validación de Datos en Modelos**  
Asegúrate de definir validaciones adecuadas en cada campo del modelo (por ejemplo, usando `required`, `unique`, `enum`, etc.) para garantizar que los datos sean correctos antes de ser guardados en la base de datos.

🔹 **Relaciones entre Documentos**  
Aunque MongoDB es una base de datos NoSQL, es posible establecer relaciones entre documentos utilizando referencias (`ref`). Aprovecha estas relaciones para conectar documentos de diferentes colecciones y evitar la redundancia de datos.

## 👥 Equipo de Desarrollo  

| Integrante | Contacto | Rol | Observaciones |
|------------|----------|----------------------------|------------------|
| **Orlando Méndez Montes** | [@MendezPro](https://github.com/MendezPro) | Líder de Desarrollo, Frontend y Backend | ✅ Revisado y aprobado |
| **Zamira Cuevas Zamora** | [@ZamyCuevas](https://github.com/ZamyCuevas) | Documentación técnica | ❌ Sin Comentarios |
| **Julia Maday Martinez Santos** | [@JuliaMaday](https://github.com/JuliaMaday) | Desarrollador de Bases de Datos | ❌ Sin Comentarios |
| **Esperanza Cruz Galindo** | [@Dulce990](https://github.com/Dulce990) | Desarrollador FrontEnd | ❌ Sin Comentarios |

### ✒️ **Datos del Autor** 

**Creado por:** [@ZamyCuevas](https://github.com/ZamyCuevas)  
