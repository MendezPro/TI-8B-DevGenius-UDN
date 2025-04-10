
### 📄 QUERIES POR TABLA

#### 1. `tbb_expediente_medico`
```sql
-- 1. Obtener todos los expedientes con lesiones previas registradas
SELECT id, Nombre, Apellido, Lesiones_previas
FROM tbb_expediente_medico
WHERE Lesiones_previas IS NOT NULL;

-- 2. Listar personas cuya última evaluación fue hace más de 6 meses
SELECT id, Nombre, Apellido, Fecha_ultima_de_evaluacion
FROM tbb_expediente_medico
WHERE Fecha_ultima_de_evaluacion < CURDATE() - INTERVAL 6 MONTH;
```

---

#### 2. `tbb_personas`
```sql
-- 1. Listar todas las personas mayores de 30 años
SELECT id, Nombre, Apellido, Fecha_Nacimiento
FROM tbb_personas
WHERE TIMESTAMPDIFF(YEAR, Fecha_Nacimiento, CURDATE()) > 30;

-- 2. Buscar personas por género
SELECT id, Nombre, Apellido, Sexo
FROM tbb_personas
WHERE Sexo = 'Femenino';
```

---

#### 3. `tbb_usuarios`
```sql
-- 1. Listar todos los usuarios activos
SELECT id_usuario, nombre_usuario
FROM tbb_usuarios
WHERE activo = 1;

-- 2. Ver usuarios y sus roles (requiere JOIN)
SELECT u.id_usuario, u.nombre_usuario, r.nombre_rol
FROM tbb_usuarios u
JOIN tbd_usuarios_roles ur ON u.id_usuario = ur.id_usuario
JOIN tbc_roles r ON ur.id_rol = r.id_rol;
```

---

#### 4. `tbc_dietas`
```sql
-- 1. Obtener todas las dietas activas
SELECT id_dieta, nombre, descripcion
FROM tbc_dietas
WHERE activa = 1;

-- 2. Buscar dietas que contengan la palabra "keto"
SELECT id_dieta, nombre, descripcion
FROM tbc_dietas
WHERE nombre LIKE '%keto%';
```

---

#### 5. `tbc_ejercicios`
```sql
-- 1. Listar ejercicios por categoría
SELECT id_ejercicio, nombre, categoria
FROM tbc_ejercicios
WHERE categoria = 'Cardio';

-- 2. Buscar ejercicios sin descripción
SELECT id_ejercicio, nombre
FROM tbc_ejercicios
WHERE descripcion IS NULL OR descripcion = '';
```

---

#### 6. `tbc_objetivo_programa`
```sql
-- 1. Mostrar objetivos activos
SELECT id_objetivo, descripcion, estatus
FROM tbc_objetivo_programa
WHERE estatus = 'Activo';

-- 2. Ver objetivos creados en el último mes
SELECT id_objetivo, descripcion, fecha_creacion
FROM tbc_objetivo_programa
WHERE fecha_creacion >= CURDATE() - INTERVAL 1 MONTH;
```

---

#### 7. `tbc_roles`
```sql
-- 1. Ver todos los roles disponibles
SELECT id_rol, nombre_rol
FROM tbc_roles;

-- 2. Contar cuántos usuarios hay por rol
SELECT r.nombre_rol, COUNT(*) AS total_usuarios
FROM tbc_roles r
JOIN tbd_usuarios_roles ur ON r.id_rol = ur.id_rol
GROUP BY r.nombre_rol;
```

---

#### 8. `tbc_rutinas`
```sql
-- 1. Rutinas creadas este año
SELECT id_rutina, nombre, fecha_creacion
FROM tbc_rutinas
WHERE YEAR(fecha_creacion) = YEAR(CURDATE());

-- 2. Rutinas activas u obsoletas
SELECT id_rutina, nombre, estado
FROM tbc_rutinas
WHERE estado IN ('Activa', 'Obsoleta');
```

---

#### 9. `tbd_indicadores_nutricionales`
```sql
-- 1. Mostrar personas con IMC mayor a 30 (obesidad)
SELECT id_usuario, imc, Peso, Estatura
FROM tbd_indicadores_nutricionales
WHERE imc > 30;

-- 2. Calcular promedio de IMC
SELECT AVG(imc) AS promedio_imc
FROM tbd_indicadores_nutricionales;
```

---

#### 10. `tbd_programas_saludables`
```sql
-- 1. Programas activos actualmente
SELECT id_programa, nombre
FROM tbd_programas_saludables
WHERE CURDATE() BETWEEN fecha_inicio AND fecha_fin;

-- 2. Contar programas por estatus
SELECT estatus, COUNT(*) AS cantidad
FROM tbd_programas_saludables
GROUP BY estatus;
```

---

#### 11. `tbd_usuarios_roles`
```sql
-- 1. Ver qué usuarios tienen más de un rol asignado
SELECT id_usuario, COUNT(*) AS cantidad_roles
FROM tbd_usuarios_roles
GROUP BY id_usuario
HAVING COUNT(*) > 1;

-- 2. Roles asignados a un usuario específico
SELECT id_rol
FROM tbd_usuarios_roles
WHERE id_usuario = 1;
```

---

#### 12. `tbi_bitacora`
```sql
-- 1. Ver últimos 20 eventos registrados en la bitácora
SELECT * FROM tbi_bitacora
ORDER BY Fecha DESC
LIMIT 20;

-- 2. Contar acciones por tipo
SELECT accion, COUNT(*) AS cantidad
FROM tbi_bitacora
GROUP BY accion;
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
