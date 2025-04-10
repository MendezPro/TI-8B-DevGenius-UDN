# 🏗️ CREATION  
![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)

## 📌 Descripción  
La carpeta **CREATION** contiene los **scripts responsables de la generación y configuración** de datos, estructuras y elementos necesarios para el correcto funcionamiento inicial del sistema. Está orientada principalmente a entornos SQL (MySQL), permitiendo una implementación organizada y automatizada.

---

## 📁 Estructura de Archivos

| Archivo | Descripción |
|--------|-------------|
| `create_tables.sql` | Contiene las sentencias SQL para la creación de todas las tablas necesarias en la base de datos. |
| `insert_initial_data.sql` | Inserta datos de ejemplo o por defecto para realizar pruebas o iniciar el sistema. |
| `create_indexes.sql` | Define índices sobre columnas específicas para optimizar el rendimiento de las consultas. |
| `create_views.sql` | Crea vistas que facilitan el acceso a información específica o consolidada. |
| `config_parameters.sql` | Configura variables del sistema, como límites, temporizadores, o parámetros globales. |
| `seed_roles_permissions.sql` | Crea roles, permisos y sus relaciones para el control de acceso dentro del sistema. |
| `README.md` | Documentación de esta carpeta, orden de ejecución y propósito de cada script. |

---

## 🧪 Ejemplos

### 🔹 create_tables.sql
```sql
CREATE TABLE tbb_usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  correo VARCHAR(100) UNIQUE NOT NULL,
  fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);
```

### 🔹 insert_initial_data.sql
```sql
INSERT INTO tbb_usuarios (nombre, correo)
VALUES ('Ana Torres', 'ana.torres@example.com'),
       ('Luis Pérez', 'luis.perez@example.com');
```

### 🔹 create_indexes.sql
```sql
CREATE INDEX idx_usuario_correo ON tbb_usuarios (correo);
```

### 🔹 create_views.sql
```sql
CREATE VIEW vista_usuarios_activos AS
SELECT nombre, correo
FROM tbb_usuarios
WHERE estatus = 1;
```

### 🔹 config_parameters.sql
```sql
INSERT INTO configuraciones (clave, valor)
VALUES ('max_sesiones', '5'),
       ('tiempo_inactividad', '15');
```

### 🔹 seed_roles_permissions.sql
```sql
INSERT INTO roles (nombre) VALUES ('admin'), ('editor'), ('usuario');
INSERT INTO permisos (nombre) VALUES ('crear'), ('editar'), ('eliminar');

-- Asignación de permisos a roles
INSERT INTO roles_permisos (id_rol, id_permiso) VALUES
(1, 1), (1, 2), (1, 3),
(2, 1), (2, 2),
(3, 1);
```

---

## 📌 Orden de Ejecución Recomendado

1. `create_tables.sql`
2. `create_indexes.sql`
3. `insert_initial_data.sql`
4. `create_views.sql`
5. `config_parameters.sql`
6. `seed_roles_permissions.sql`

---

## 📎 Observaciones

- Todos los scripts están diseñados para funcionar en entornos **MySQL**.
- Asegúrate de ejecutar estos scripts en un entorno seguro antes de utilizarlos en producción.
- Modifica los datos según las necesidades del proyecto.

## 👥 Equipo de Desarrollo  

| Integrante | Contacto | Rol | Observaciones |
|------------|----------|----------------------------|------------------|
| **Orlando Méndez Montes** | [@MendezPro](https://github.com/MendezPro) | Líder de Desarrollo, Frontend y Backend | ✅ Revisado y aprobado |
| **Zamira Cuevas Zamora** | [@ZamyCuevas](https://github.com/ZamyCuevas) | Documentación técnica | ❌ Sin Comentarios |
| **Julia Maday Martinez Santos** | [@JuliaMaday](https://github.com/JuliaMaday) | Desarrollador de Bases de Datos | ❌ Sin Comentarios |
| **Esperanza Cruz Galindo** | [@Dulce990](https://github.com/Dulce990) | Desarrollador FrontEnd | ❌ Sin Comentarios |

### ✒️ **Datos del Autor**

**Creado por:** [@ZamyCuevas](https://github.com/ZamyCuevas)
