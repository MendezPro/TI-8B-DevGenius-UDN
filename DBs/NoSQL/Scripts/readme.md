# 🎨 Scripts del Proyecto ![Balsamiq](https://img.shields.io/badge/Balsamiq-000000.svg?style=for-the-badge&logoColor=white) 

## 📌 Descripción  
La carpeta **Scripts** contiene **scripts** para la gestión de bases de datos tanto **relacionales** como **no relacionales**. Estos scripts están diseñados para facilitar tareas como la **creación de estructuras**, la **manipulación de datos**, el **mantenimiento** y la **automatización** de procesos en la base de datos, garantizando su correcta implementación y optimización. La automatización de estas tareas asegura una mejor administración del sistema y facilita las tareas de mantenimiento en el proyecto.

## Estructura de archivos 📂

>|- DBs<br>
>&nbsp;&nbsp;| - SQL<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- Backups<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- Diagrams<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- Models<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- **Scripts 📂**<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- Queries<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- Schemas<br>
>|- Deliverables<br>
>|- Docs<br>
>|- imgs<br>
>|- Prototypes<br>
>|- QA<br>

## 📌 Tipos de Scripts  
🔹 **Scripts de Creación de Estructuras**  
Se utilizan para crear y estructurar las bases de datos, definir tablas, índices, relaciones entre entidades, etc.  
Ejemplo:  
```sql
CREATE TABLE tbc_rutinas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    id_user INT,
    id_ejercicio INT,
    descripcion TEXT,
    duracion FLOAT,
    frecuencia INT,
    fecha_inicio DATETIME,
    fecha_finalizacion DATETIME,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion DATETIME
);
```

🔹 **Scripts de Manipulación de Datos**  
Estos scripts se usan para insertar, actualizar o eliminar datos en la base de datos.  
Ejemplo de inserción:  
```sql
INSERT INTO tbc_rutinas (nombre, id_user, id_ejercicio, descripcion, duracion, frecuencia, fecha_inicio, fecha_creacion)
VALUES ('Rutina de Cardio', 1, 3, 'Rutina para mejorar resistencia', 1.2, 3, '2025-04-08', CURRENT_TIMESTAMP);
```

🔹 **Scripts de Mantenimiento**  
Son utilizados para tareas como la actualización de índices, limpieza de registros obsoletos, análisis de rendimiento, entre otros.  
Ejemplo de mantenimiento:  
```sql
OPTIMIZE TABLE tbc_rutinas;
```

🔹 **Scripts de Automatización**  
Estos scripts permiten automatizar tareas repetitivas, como la actualización de datos, la generación de backups, o la sincronización de bases de datos.  
Ejemplo de backup en MySQL:  
```bash
#!/bin/bash
mysqldump -u root -p database_name > /path/to/backup/dump_$(date +\%F).sql
```

## 📌 Buenas Prácticas  
🔹 **Uso de Versionamiento**  
Es importante usar herramientas de control de versiones (como Git) para almacenar y gestionar los scripts, lo que permite un mejor seguimiento de los cambios y colaboraciones en equipo.

🔹 **Automatización y Programación de Tareas**  
Utiliza herramientas como **cron jobs** (Linux) o **Task Scheduler** (Windows) para automatizar scripts de mantenimiento y backups.

🔹 **Validaciones y Pruebas**  
Antes de ejecutar cualquier script, asegúrate de que esté probado en un entorno de desarrollo o staging para evitar problemas en el entorno de producción.

🔹 **Optimización de Consultas**  
Al escribir scripts de manipulación de datos, asegúrate de que las consultas sean eficientes, utilizando índices y evitando operaciones costosas innecesarias.

## 👥 Equipo de Desarrollo  

| Integrante | Contacto | Rol | Observaciones |
|------------|----------|----------------------------|------------------|
| **Orlando Méndez Montes** | [@MendezPro](https://github.com/MendezPro) | Líder de Desarrollo, Frontend y Backend | ✅ Revisado y aprobado |
| **Zamira Cuevas Zamora** | [@ZamyCuevas](https://github.com/ZamyCuevas) | Documentación técnica | ❌ Sin Comentarios |
| **Julia Maday Martinez Santos** | [@JuliaMaday](https://github.com/JuliaMaday) | Desarrollador de Bases de Datos | ❌ Sin Comentarios |
| **Esperanza Cruz Galindo** | [@Dulce990](https://github.com/Dulce990) | Desarrollador FrontEnd | ❌ Sin Comentarios |

### ✒️ **Datos del Autor** 

**Creado por:** [@ZamyCuevas](https://github.com/ZamyCuevas)  
