### 🔹 Triggers para `tbb_expediente_medico`

```sql
DELIMITER $$
CREATE TRIGGER trg_tbb_expediente_medico_after_insert
AFTER INSERT ON tbb_expediente_medico
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('INSERT', 'tbb_expediente_medico', NOW(), CONCAT('Nuevo registro insertado con ID: ', NEW.id));
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trg_tbb_expediente_medico_after_update
AFTER UPDATE ON tbb_expediente_medico
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('UPDATE', 'tbb_expediente_medico', NOW(), CONCAT('Registro actualizado con ID: ', NEW.id));
END$$
DELIMITER ;
```

---

### 🔹 Triggers para `tbb_usuarios`

```sql
DELIMITER $$
CREATE TRIGGER trg_tbb_usuarios_after_insert
AFTER INSERT ON tbb_usuarios
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('INSERT', 'tbb_usuarios', NOW(), CONCAT('Nuevo registro insertado con ID: ', NEW.id));
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trg_tbb_usuarios_after_update
AFTER UPDATE ON tbb_usuarios
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('UPDATE', 'tbb_usuarios', NOW(), CONCAT('Registro actualizado con ID: ', NEW.id));
END$$
DELIMITER ;
```

---

### 🔹 Triggers para `tbc_dietas`

```sql
DELIMITER $$
CREATE TRIGGER trg_tbc_dietas_after_insert
AFTER INSERT ON tbc_dietas
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('INSERT', 'tbc_dietas', NOW(), CONCAT('Nuevo registro insertado con ID: ', NEW.id));
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trg_tbc_dietas_after_update
AFTER UPDATE ON tbc_dietas
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('UPDATE', 'tbc_dietas', NOW(), CONCAT('Registro actualizado con ID: ', NEW.id));
END$$
DELIMITER ;
```

### 🔹 Triggers para `tbc_ejercicios`

```sql
DELIMITER $$
CREATE TRIGGER trg_tbc_ejercicios_after_insert
AFTER INSERT ON tbc_ejercicios
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('INSERT', 'tbc_ejercicios', NOW(), CONCAT('Nuevo registro insertado con ID: ', NEW.id));
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trg_tbc_ejercicios_after_update
AFTER UPDATE ON tbc_ejercicios
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('UPDATE', 'tbc_ejercicios', NOW(), CONCAT('Registro actualizado con ID: ', NEW.id));
END$$
DELIMITER ;
```

---

### 🔹 Triggers para `tbc_objetivo_programa`

```sql
DELIMITER $$
CREATE TRIGGER trg_tbc_objetivo_programa_after_insert
AFTER INSERT ON tbc_objetivo_programa
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('INSERT', 'tbc_objetivo_programa', NOW(), CONCAT('Nuevo registro insertado con ID: ', NEW.id));
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trg_tbc_objetivo_programa_after_update
AFTER UPDATE ON tbc_objetivo_programa
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('UPDATE', 'tbc_objetivo_programa', NOW(), CONCAT('Registro actualizado con ID: ', NEW.id));
END$$
DELIMITER ;
```

---

### 🔹 Triggers para `tbc_roles`

```sql
DELIMITER $$
CREATE TRIGGER trg_tbc_roles_after_insert
AFTER INSERT ON tbc_roles
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('INSERT', 'tbc_roles', NOW(), CONCAT('Nuevo registro insertado con ID: ', NEW.id));
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trg_tbc_roles_after_update
AFTER UPDATE ON tbc_roles
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('UPDATE', 'tbc_roles', NOW(), CONCAT('Registro actualizado con ID: ', NEW.id));
END$$
DELIMITER ;
```

### 🔹 Triggers para `tbc_rutinas`

```sql
DELIMITER $$
CREATE TRIGGER trg_tbc_rutinas_after_insert
AFTER INSERT ON tbc_rutinas
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('INSERT', 'tbc_rutinas', NOW(), CONCAT('Nuevo registro insertado con ID: ', NEW.id));
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trg_tbc_rutinas_after_update
AFTER UPDATE ON tbc_rutinas
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('UPDATE', 'tbc_rutinas', NOW(), CONCAT('Registro actualizado con ID: ', NEW.id));
END$$
DELIMITER ;
```

---

### 🔹 Triggers para `tbd_indicadores_nutricionales`

```sql
DELIMITER $$
CREATE TRIGGER trg_tbd_indicadores_nutricionales_after_insert
AFTER INSERT ON tbd_indicadores_nutricionales
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('INSERT', 'tbd_indicadores_nutricionales', NOW(), CONCAT('Nuevo registro insertado con ID: ', NEW.id));
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trg_tbd_indicadores_nutricionales_after_update
AFTER UPDATE ON tbd_indicadores_nutricionales
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('UPDATE', 'tbd_indicadores_nutricionales', NOW(), CONCAT('Registro actualizado con ID: ', NEW.id));
END$$
DELIMITER ;
```

---

### 🔹 Triggers para `tbd_programas_saludables`

```sql
DELIMITER $$
CREATE TRIGGER trg_tbd_programas_saludables_after_insert
AFTER INSERT ON tbd_programas_saludables
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('INSERT', 'tbd_programas_saludables', NOW(), CONCAT('Nuevo registro insertado con ID: ', NEW.id));
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trg_tbd_programas_saludables_after_update
AFTER UPDATE ON tbd_programas_saludables
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('UPDATE', 'tbd_programas_saludables', NOW(), CONCAT('Registro actualizado con ID: ', NEW.id));
END$$
DELIMITER ;
```

### 🔹 Triggers para `tbd_usuarios_roles`

```sql
DELIMITER $$
CREATE TRIGGER trg_tbd_usuarios_roles_after_insert
AFTER INSERT ON tbd_usuarios_roles
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('INSERT', 'tbd_usuarios_roles', NOW(), CONCAT('Nuevo registro insertado con ID: ', NEW.id));
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trg_tbd_usuarios_roles_after_update
AFTER UPDATE ON tbd_usuarios_roles
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('UPDATE', 'tbd_usuarios_roles', NOW(), CONCAT('Registro actualizado con ID: ', NEW.id));
END$$
DELIMITER ;
```

---

### 🔹 Triggers para `tbi_bitacora`

*⚠️ Nota: Normalmente no se recomienda poner triggers sobre la tabla de bitácora para evitar loops o redundancia*

```sql
DELIMITER $$
CREATE TRIGGER trg_tbi_bitacora_after_insert
AFTER INSERT ON tbi_bitacora
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('INSERT', 'tbi_bitacora', NOW(), 'Se insertó un nuevo registro en la bitácora.');
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trg_tbi_bitacora_after_update
AFTER UPDATE ON tbi_bitacora
FOR EACH ROW
BEGIN
  INSERT INTO tbi_bitacora (accion, tabla, fecha, detalle)
  VALUES ('UPDATE', 'tbi_bitacora', NOW(), 'Se actualizó un registro de la bitácora.');
END$$
DELIMITER ;
```

## 👥 Equipo de Desarrollo  

| Integrante | Contacto | Rol | Observaciones |
|------------|----------|----------------------------|------------------|
| **Orlando Méndez Montes** | [@MendezPro](https://github.com/MendezPro) | Líder de Desarrollo, Frontend y Backend | ✅ Revisado y aprobado |
| **Zamira Cuevas Zamora** | [@ZamyCuevas](https://github.com/ZamyCuevas) | Documentación técnica | ❌ Sin Comentarios |
| **Julia Maday Martinez Santos** | [@JuliaMaday](https://github.com/JuliaMaday) | Desarrollador de Bases de Datos | ❌ Sin Comentarios |
| **Esperanza Cruz Galindo** | [@Dulce990](https://github.com/Dulce990) | Desarrollador FrontEnd | ❌ Sin Comentarios |

### ✒️ **Datos del Autor**

**Creado por:** [@ZamyCuevas](https://github.com/ZamyCuevas)
