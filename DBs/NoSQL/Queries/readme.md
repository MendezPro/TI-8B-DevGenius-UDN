## 📁 Queries ![SQL](https://img.shields.io/badge/SQL-%234ea94b.svg?style=for-the-badge&logo=sqlite&logoColor=white)

## 📌 Descripción  
Este directorio (**Queries**) contiene **consultas específicas** utilizadas para recuperar, actualizar, insertar o eliminar datos en la base de datos SQL del sistema. Las consultas están optimizadas para responder a los requisitos del negocio, mejorar el rendimiento de la base de datos y garantizar la integridad de los datos.

## Estructura de archivos 📂

>|- DBs<br>
>&nbsp;&nbsp;| - SQL<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- Backups<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- Diagrams<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- Models<br>
>&nbsp;&nbsp; &nbsp;&nbsp;**|- Queries 📂**<br>
>&nbsp;&nbsp; &nbsp;&nbsp;|- Scripts<br>
>|- Deliverables<br>
>|- Docs<br>
>|- imgs<br>
>|- Prototypes<br>
>|- QA<br>

## 📌 Tipos de Consultas  
🔹 **Consultas de Selección**  
Se utilizan para recuperar información específica de la base de datos.  
Ejemplo:  
```sql
SELECT * FROM tbc_rutinas WHERE id_user = 1;
```

🔹 **Consultas de Inserción**  
Se utilizan para insertar nuevos registros en la base de datos.  
Ejemplo:  
```sql
INSERT INTO tbc_rutinas (nombre, id_user, id_ejercicios, id_objetivo, descripcion, duracion, frecuencia, fecha_creacion) 
VALUES ('Rutina de Fuerza', 1, 2, 'Aumento de masa muscular', 'Rutina para fuerza', 1.5, 4, CURRENT_TIMESTAMP);
```

🔹 **Consultas de Actualización**  
Actualizan registros existentes basándose en ciertos criterios.  
Ejemplo:  
```sql
UPDATE tbc_rutinas SET duracion = 2 WHERE id = 1;
```

🔹 **Consultas de Eliminación**  
Eliminar registros según los criterios definidos.  
Ejemplo:  
```sql
DELETE FROM tbc_rutinas WHERE id = 1;
```

## 📌 Organización de Consultas  
- **Consultas de Selección**  
  Consultas que recuperan datos de varias tablas con uniones o filtros complejos.

- **Consultas de Actualización**  
  Consultas que modifican datos, asegurándose de que las condiciones de actualización sean precisas.

- **Consultas de Inserción**  
  Consultas para insertar nuevos registros en las tablas relacionadas.

- **Consultas de Eliminación**  
  Consultas que eliminan datos de las tablas de forma segura, con condiciones que evitan la eliminación accidental de información importante.

## 📌 Buenas Prácticas  
🔹 **Uso de Transacciones**  
Las consultas que afectan a múltiples tablas deben ejecutarse dentro de transacciones para garantizar la integridad de los datos.

🔹 **Optimización de Consultas**  
Asegúrate de que las consultas sean eficientes, utilizando índices y evitando consultas complejas que puedan afectar el rendimiento.

🔹 **Seguridad**  
Usa sentencias preparadas o procedimientos almacenados para evitar inyecciones SQL y garantizar la seguridad de la base de datos.

## 👥 Equipo de Desarrollo  

| Integrante | Contacto | Rol | Observaciones |
|------------|----------|----------------------------|------------------|
| **Orlando Méndez Montes** | [@MendezPro](https://github.com/MendezPro) | Líder de Desarrollo, Frontend y Backend | ✅ Revisado y aprobado |
| **Zamira Cuevas Zamora** | [@ZamyCuevas](https://github.com/ZamyCuevas) | Documentación técnica | ❌ Sin Comentarios |
| **Julia Maday Martinez Santos** | [@JuliaMaday](https://github.com/JuliaMaday) | Desarrollador de Bases de Datos | ❌ Sin Comentarios |
| **Esperanza Cruz Galindo** | [@Dulce990](https://github.com/Dulce990) | Desarrollador FrontEnd | ❌ Sin Comentarios |

### ✒️ **Datos del Autor** 

**Creado por:** [@ZamyCuevas](https://github.com/ZamyCuevas)  
