# 📜 SCRIPTS de la Base de Datos SQL

![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=sql&logoColor=white)

## 📌 Descripción  

Este directorio contiene los **scripts SQL** relacionados con la **gestión, mantenimiento y configuración** de la base de datos **relacional (MySQL)** del sistema. Los archivos están organizados en subcarpetas según su propósito específico: creación de estructuras, funciones, triggers, eventos y más.

Estos scripts permiten automatizar procesos, garantizar la integridad de los datos y mantener una base de datos eficiente y bien estructurada.

---

## 📁 Estructura de Carpetas

| Carpeta          | Contenido                                                                  |
|------------------|---------------------------------------------------------------------------|
| `creation/`      | Scripts para la creación de tablas, índices y relaciones.                 |
| `functions/`     | Funciones definidas por el usuario (UDFs) para operaciones específicas.    |
| `triggers/`      | Triggers que automatizan procesos como auditorías o validaciones.         |
| `events/`        | Eventos programados para tareas recurrentes en la base de datos.          |
| `poblate/`       | Scripts para insertar datos de prueba (mock data) para desarrollo y QA.   |
| `queries/`       | Consultas específicas de inserción, selección, actualización o borrado.   |

---

## 📂 Ejemplos por Carpeta

### 🔧 `creation/`

```sql
CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  correo VARCHAR(100) UNIQUE,
  fecha_registro DATE
);
```

---

### 🔁 `functions/`

```sql
DELIMITER //
CREATE FUNCTION obtener_edad(fecha_nacimiento DATE) RETURNS INT
BEGIN
  RETURN TIMESTAMPDIFF(YEAR, fecha_nacimiento, CURDATE());
END //
DELIMITER ;
```

---

### ⚡ `triggers/`

```sql
CREATE TRIGGER before_insert_usuario
BEFORE INSERT ON usuarios
FOR EACH ROW
SET NEW.fecha_registro = CURDATE();
```

---

### ⏰ `events/`

```sql
CREATE EVENT limpiar_logs
ON SCHEDULE EVERY 1 WEEK
DO
  DELETE FROM logs WHERE fecha < DATE_SUB(NOW(), INTERVAL 30 DAY);
```

---

### 🌱 `poblate/`

```sql
INSERT INTO usuarios (nombre, correo) VALUES
('Juan Pérez', 'juan@example.com'),
('Lucía Gómez', 'lucia@example.com');
```

---

### 🔍 `queries/`

```sql
SELECT nombre, correo FROM usuarios WHERE fecha_registro >= CURDATE() - INTERVAL 7 DAY;
```

---

## ✅ Recomendaciones

- Ejecutar los scripts en **entornos de desarrollo** antes de aplicarlos en producción.
- Hacer **backups** antes de modificaciones estructurales o masivas.
- Utilizar control de versiones (Git) para mantener un historial de cambios en los scripts.

## 👥 Equipo de Desarrollo  

| Integrante | Contacto | Rol | Observaciones |
|------------|----------|----------------------------|------------------|
| **Orlando Méndez Montes** | [@MendezPro](https://github.com/MendezPro) | Líder de Desarrollo, Frontend y Backend | ✅ Revisado y aprobado |
| **Zamira Cuevas Zamora** | [@ZamyCuevas](https://github.com/ZamyCuevas) | Documentación técnica | ❌ Sin Comentarios |
| **Julia Maday Martinez Santos** | [@JuliaMaday](https://github.com/JuliaMaday) | Desarrollador de Bases de Datos | ❌ Sin Comentarios |
| **Esperanza Cruz Galindo** | [@Dulce990](https://github.com/Dulce990) | Desarrollador FrontEnd | ❌ Sin Comentarios |

### ✒️ **Datos del Autor**

**Creado por:** [@ZamyCuevas](https://github.com/ZamyCuevas)
