¡Perfecto! Aquí tienes una versión mejorada y bien estructurada para la sección de **Triggers en SQL (MySQL)**:

---

# ⚡ Triggers en SQL (MySQL)  
![MySQL](https://img.shields.io/badge/MySQL-Trigger-blue?style=for-the-badge&logo=mysql&logoColor=white)

## 📌 Descripción  
La carpeta **Triggers** contiene los **disparadores (triggers)** implementados en la base de datos SQL del sistema. Estos mecanismos permiten **automatizar tareas**, **mantener la integridad de los datos** y **realizar auditorías** de manera eficiente, sin necesidad de intervención manual desde la aplicación.

## 🧩 ¿Qué son los Triggers?  
Los triggers son procedimientos almacenados que se ejecutan automáticamente **antes o después** de operaciones como `INSERT`, `UPDATE` o `DELETE` sobre una tabla específica. Son especialmente útiles para:

- 🛡️ **Validar y asegurar la consistencia de los datos**.  
- 📝 **Auditar cambios** en información sensible.  
- 🔁 **Sincronizar acciones** en múltiples tablas.  
- 🧹 **Mantener datos derivados o de respaldo** actualizados.

## ⚙️ Tipos de Triggers Implementados

- **BEFORE INSERT / UPDATE / DELETE**  
  Validaciones y modificaciones previas al registro de cambios.

- **AFTER INSERT / UPDATE / DELETE**  
  Registro de cambios en tablas de auditoría, historial u otras dependencias.

## ✅ Beneficios de Usar Triggers

- Eliminan errores humanos en procesos críticos.  
- Mejoran la eficiencia del sistema al automatizar tareas repetitivas.  
- Facilitan la trazabilidad de acciones en la base de datos.  
- Garantizan reglas de negocio directamente a nivel de base de datos.

## Ejemplos de triggers

### 📄 `triggers.sql`

```sql
-- ========================================
-- 🔥 TRIGGERS DEL SISTEMA - MySQL
-- Autor: @ZamyCuevas
-- Descripción: Automatización de procesos para validación, auditoría y sincronización de datos.
-- Fecha de creación: 2025-04-08
-- ========================================

-- ✅ Trigger: Auditoría al insertar usuario
DELIMITER $$
CREATE TRIGGER trg_after_insert_usuario
AFTER INSERT ON tbb_usuarios
FOR EACH ROW
BEGIN
  INSERT INTO tba_auditoria_usuarios (usuario_id, accion, fecha)
  VALUES (NEW.id, 'INSERT', NOW());
END$$
DELIMITER ;

-- ✅ Trigger: Validar duración de rutina antes de insertarla
DELIMITER $$
CREATE TRIGGER trg_before_insert_rutina
BEFORE INSERT ON tbc_rutinas
FOR EACH ROW
BEGIN
  IF NEW.duracion <= 0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'La duración de la rutina debe ser mayor a 0.';
  END IF;
END$$
DELIMITER ;

-- ✅ Trigger: Guardar historial antes de eliminar rutina
DELIMITER $$
CREATE TRIGGER trg_before_delete_rutina
BEFORE DELETE ON tbc_rutinas
FOR EACH ROW
BEGIN
  INSERT INTO tbh_rutinas_eliminadas (rutina_id, nombre, descripcion, fecha_eliminacion)
  VALUES (OLD.id, OLD.nombre, OLD.descripcion, NOW());
END$$
DELIMITER ;
```

### 📝 Explicación Rápida

- **`trg_after_insert_usuario`**  
  Registra toda inserción en una tabla de auditoría.

- **`trg_before_insert_rutina`**  
  Impide que se inserte una rutina con duración inválida (≤ 0).

- **`trg_before_delete_rutina`**  
  Guarda los datos de la rutina eliminada en una tabla de historial antes de borrarla.

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
