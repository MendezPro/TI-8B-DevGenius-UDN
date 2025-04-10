### ⚙️ Supuestos generales

- El **Event Scheduler** está activado:  
  ```sql
  SET GLOBAL event_scheduler = ON;
  ```

- Todos los eventos serán **recurrentes** y tendrán un propósito claro.

---

### 🧠 Eventos por tabla (ejemplos reales y útiles)

---

#### 1. `tbb_expediente_medico`  
**Evento:** Actualizar campo `Fecha_ultima_de_evaluacion` si han pasado más de 6 meses  
```sql
CREATE EVENT IF NOT EXISTS actualizar_fecha_evaluacion
ON SCHEDULE EVERY 1 DAY
DO
UPDATE tbb_expediente_medico
SET Fecha_ultima_de_evaluacion = CURDATE()
WHERE DATEDIFF(CURDATE(), Fecha_ultima_de_evaluacion) > 180;
```

---

#### 2. `tbb_usuarios`  
**Evento:** Desactivar usuarios inactivos por más de 1 año  
```sql
CREATE EVENT IF NOT EXISTS desactivar_usuarios_inactivos
ON SCHEDULE EVERY 1 WEEK
DO
UPDATE tbb_usuarios
SET activo = 0
WHERE DATEDIFF(CURDATE(), Fecha_registro) > 365;
```
*Asumiendo que hay un campo `activo` en la tabla.*

---

#### 3. `tbd_indicadores_nutricionales`  
**Evento:** Recalcular IMC automáticamente  
```sql
CREATE EVENT IF NOT EXISTS recalcular_imc
ON SCHEDULE EVERY 1 WEEK
DO
UPDATE tbd_indicadores_nutricionales
SET imc = ROUND(Peso / POW(Estatura/100, 2), 2)
WHERE Peso IS NOT NULL AND Estatura IS NOT NULL;
```
*Asegúrate que las columnas `Peso` y `Estatura` existen en esta tabla o ajusta los nombres.*

---

#### 4. `tbi_bitacora`  
**Evento:** Eliminar registros antiguos de auditoría (más de 1 año)  
```sql
CREATE EVENT IF NOT EXISTS limpiar_bitacora
ON SCHEDULE EVERY 1 MONTH
DO
DELETE FROM tbi_bitacora
WHERE Fecha < (CURDATE() - INTERVAL 1 YEAR);
```

---

#### 5. `tbd_programas_saludables`  
**Evento:** Actualizar estatus de programas vencidos  
```sql
CREATE EVENT IF NOT EXISTS finalizar_programas_expirados
ON SCHEDULE EVERY 1 DAY
DO
UPDATE tbd_programas_saludables
SET estatus = 'Finalizado'
WHERE CURDATE() > fecha_fin AND estatus != 'Finalizado';
```

---

#### 6. `tbc_dietas`  
**Evento:** Verificar que todas las dietas activas tengan al menos una comida asignada (registro de advertencia)  
```sql
CREATE EVENT IF NOT EXISTS verificar_dietas_incompletas
ON SCHEDULE EVERY 1 WEEK
DO
INSERT INTO tbi_bitacora (accion, descripcion, Fecha)
SELECT 'Verificación', CONCAT('Dieta ID ', id_dieta, ' sin comidas asignadas'), NOW()
FROM tbc_dietas
WHERE id_dieta NOT IN (
  SELECT DISTINCT id_dieta FROM tbd_programas_saludables
);
```
¡Claro! Aquí tienes un **evento adicional para cada una de las 12 tablas** de tu base de datos. Se suman a los anteriores y están pensados para casos de uso útiles o mantenimiento.

---

### 🔁 EVENTOS ADICIONALES POR TABLA

---

#### 1. `tbb_expediente_medico`  
**Evento:** Establecer bandera de seguimiento si no hay evaluación reciente  
```sql
CREATE EVENT IF NOT EXISTS marcar_seguimiento_expedientes
ON SCHEDULE EVERY 1 DAY
DO
UPDATE tbb_expediente_medico
SET Antecedentes_medicos = CONCAT(Antecedentes_medicos, '\n[SEGUIMIENTO PENDIENTE]')
WHERE DATEDIFF(CURDATE(), Fecha_ultima_de_evaluacion) > 90
AND Antecedentes_medicos NOT LIKE '%SEGUIMIENTO PENDIENTE%';
```

---

#### 2. `tbb_personas`  
**Evento:** Normalizar nombres (capitalizar iniciales)  
```sql
CREATE EVENT IF NOT EXISTS normalizar_nombres_personas
ON SCHEDULE EVERY 1 WEEK
DO
UPDATE tbb_personas
SET Nombre = CONCAT(UCASE(LEFT(Nombre,1)), LCASE(SUBSTRING(Nombre,2))),
    Apellido = CONCAT(UCASE(LEFT(Apellido,1)), LCASE(SUBSTRING(Apellido,2)));
```

---

#### 3. `tbb_usuarios`  
**Evento:** Marcar usuarios como "verificados" si tienen expediente completo  
```sql
CREATE EVENT IF NOT EXISTS verificar_usuarios_completos
ON SCHEDULE EVERY 1 DAY
DO
UPDATE tbb_usuarios
SET verificado = 1
WHERE id_persona IN (
  SELECT id FROM tbb_expediente_medico
)
AND verificado = 0;
```
*Suponiendo que exista el campo `verificado`.*

---

#### 4. `tbc_dietas`  
**Evento:** Cambiar estado a "inactiva" si no se ha usado en un programa activo  
```sql
CREATE EVENT IF NOT EXISTS desactivar_dietas_no_usadas
ON SCHEDULE EVERY 1 MONTH
DO
UPDATE tbc_dietas
SET activa = 0
WHERE id_dieta NOT IN (
  SELECT id_dieta FROM tbd_programas_saludables
)
AND activa = 1;
```

---

#### 5. `tbc_ejercicios`  
**Evento:** Agregar advertencia a ejercicios sin categoría  
```sql
CREATE EVENT IF NOT EXISTS advertencia_ejercicios_sin_categoria
ON SCHEDULE EVERY 1 WEEK
DO
UPDATE tbc_ejercicios
SET descripcion = CONCAT(descripcion, ' [FALTA CATEGORÍA]')
WHERE categoria IS NULL AND descripcion NOT LIKE '%FALTA CATEGORÍA%';
```

---

#### 6. `tbc_objetivo_programa`  
**Evento:** Archivar objetivos inactivos por más de 1 año  
```sql
CREATE EVENT IF NOT EXISTS archivar_objetivos_antiguos
ON SCHEDULE EVERY 1 MONTH
DO
UPDATE tbc_objetivo_programa
SET estatus = 'Archivado'
WHERE DATEDIFF(CURDATE(), fecha_creacion) > 365
AND estatus != 'Archivado';
```

---

#### 7. `tbc_roles`  
**Evento:** Crear log de cambios de roles (simulado)  
```sql
CREATE EVENT IF NOT EXISTS log_roles_sin_movimiento
ON SCHEDULE EVERY 1 MONTH
DO
INSERT INTO tbi_bitacora (accion, descripcion, Fecha)
SELECT 'Revisión Rol', CONCAT('Rol "', nombre_rol, '" sin cambios'), NOW()
FROM tbc_roles;
```

---

#### 8. `tbc_rutinas`  
**Evento:** Marcar rutinas como “obsoletas” si no se han usado en 6 meses  
```sql
CREATE EVENT IF NOT EXISTS marcar_rutinas_obsoletas
ON SCHEDULE EVERY 1 MONTH
DO
UPDATE tbc_rutinas
SET estado = 'Obsoleta'
WHERE DATEDIFF(CURDATE(), fecha_creacion) > 180
AND estado != 'Obsoleta';
```

---

#### 9. `tbd_indicadores_nutricionales`  
**Evento:** Insertar log de alerta si hay IMC fuera de rango  
```sql
CREATE EVENT IF NOT EXISTS alerta_imc_fuera_de_rango
ON SCHEDULE EVERY 1 DAY
DO
INSERT INTO tbi_bitacora (accion, descripcion, Fecha)
SELECT 'Alerta IMC', CONCAT('Usuario con IMC fuera de rango: ', imc), NOW()
FROM tbd_indicadores_nutricionales
WHERE imc < 18.5 OR imc > 30;
```

---

#### 10. `tbd_programas_saludables`  
**Evento:** Renombrar programas caducos  
```sql
CREATE EVENT IF NOT EXISTS renombrar_programas_expirados
ON SCHEDULE EVERY 1 WEEK
DO
UPDATE tbd_programas_saludables
SET nombre = CONCAT(nombre, ' (VENCIDO)')
WHERE fecha_fin < CURDATE()
AND nombre NOT LIKE '%(VENCIDO)%';
```

---

#### 11. `tbd_usuarios_roles`  
**Evento:** Verificar duplicidad de roles y eliminarlos  
```sql
CREATE EVENT IF NOT EXISTS eliminar_roles_duplicados
ON SCHEDULE EVERY 1 WEEK
DO
DELETE ur1 FROM tbd_usuarios_roles ur1
INNER JOIN tbd_usuarios_roles ur2
ON ur1.id_usuario = ur2.id_usuario AND ur1.id_rol = ur2.id_rol
AND ur1.id < ur2.id;
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
