# 📅 Events  
![Events in SQL](https://img.shields.io/badge/Events_in_SQL-Database-orange)

## 📌 Descripción  
El archivo `events.sql` contiene el **script de gestión de eventos** en una base de datos relacional. Define la estructura necesaria para registrar **eventos** 🗓️, sus **participantes** 👥 y las relaciones entre ellos, asegurando integridad referencial y una adecuada organización de la información.

## 🔧 Características Principales

- 🏗️ **Creación de Tablas**:  
  Define las entidades clave del sistema:
  - `Eventos` 🏷️  
  - `Participantes` 🧑‍🤝‍🧑  
  - `Asistencia`, `Ubicaciones`, u otras tablas auxiliares si aplica.

- 🔑 **Relaciones con Claves Foráneas**:  
  Se implementan relaciones entre tablas mediante llaves primarias y foráneas para mantener la integridad de los datos.

- ⚙️ **Datos de Ejemplo**:  
  Inserciones básicas para pruebas iniciales y verificación de la estructura.

- 📚 **Normalización**:  
  Las tablas están estructuradas siguiendo principios de normalización para evitar redundancia y mejorar la eficiencia.

## 📁 Estructura del Archivo

```sql
-- Tabla: eventos
CREATE TABLE eventos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    fecha DATETIME NOT NULL,
    ubicacion VARCHAR(255),
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Tabla: participantes
CREATE TABLE participantes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

-- Tabla: asistencia
CREATE TABLE asistencia (
    id_evento INT,
    id_participante INT,
    PRIMARY KEY (id_evento, id_participante),
    FOREIGN KEY (id_evento) REFERENCES eventos(id),
    FOREIGN KEY (id_participante) REFERENCES participantes(id)
);
```

## 🎯 Objetivo

Este script facilita la **planificación, control y seguimiento** de eventos y asistentes, permitiendo una administración eficiente y escalable.

## 🧪 Recomendaciones

- Utilizar herramientas como **MySQL Workbench** o **phpMyAdmin** para importar y probar el script.  
- Asegurar el manejo adecuado de fechas y validaciones en el frontend/backend según las restricciones de las tablas.

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
