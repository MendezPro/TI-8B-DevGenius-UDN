# 🌱 Poblate  
![MySQL](https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white)

## 📌 Descripción  

La carpeta **Poblate** contiene scripts SQL diseñados para **poblar bases de datos MySQL con datos de prueba o iniciales**. Estos scripts son útiles para pruebas de funcionalidades, validación de consultas y simulación de escenarios reales en el entorno de desarrollo.

Permiten crear un entorno consistente para pruebas automatizadas y desarrollo colaborativo.

---

## 📁 Estructura de Archivos

| Archivo                        | Descripción                                                                 |
|-------------------------------|-----------------------------------------------------------------------------|
| `poblate_usuarios.sql`        | Inserta registros de ejemplo en la tabla de usuarios.                       |
| `poblate_productos.sql`       | Agrega datos ficticios de productos con precios y categorías.              |
| `poblate_ordenes.sql`         | Inserta órdenes de compra con referencias a usuarios y productos.          |
| `README.md`                   | Documentación sobre los scripts de población.                              |

---

## 🧪 Ejemplos

### 🔹 `poblate_usuarios.sql`

```sql
INSERT INTO usuarios (nombre, correo, fecha_registro) VALUES
('Ana López', 'ana@example.com', CURDATE()),
('Luis Pérez', 'luisp@example.com', CURDATE()),
('María Gómez', 'maria_g@example.com', CURDATE());
```

### 🔹 `poblate_productos.sql`

```sql
INSERT INTO productos (nombre, precio, categoria) VALUES
('Laptop Lenovo', 15999.00, 'Tecnología'),
('Silla Ergonómica', 2499.00, 'Oficina'),
('Audífonos Bluetooth', 699.00, 'Accesorios');
```

### 🔹 `poblate_ordenes.sql`

```sql
INSERT INTO ordenes (usuario_id, producto_id, fecha_orden) VALUES
(1, 2, CURDATE()),
(2, 1, CURDATE()),
(3, 3, CURDATE());
```

---

## 📎 Recomendaciones

- Usar estos scripts solo en entornos de **desarrollo o pruebas**.
- Verificar las **llaves foráneas y restricciones** antes de poblar tablas relacionadas.
- Asegúrate de que las **tablas existan** antes de ejecutar los scripts.

---

## 🧰 Herramientas Recomendadas

- [DBeaver](https://dbeaver.io/) o [MySQL Workbench](https://www.mysql.com/products/workbench/) para ejecución visual de los scripts.
- Utilizar `BEGIN` y `COMMIT` para agrupar transacciones si se desea más control.

## 👥 Equipo de Desarrollo  

| Integrante | Contacto | Rol | Observaciones |
|------------|----------|----------------------------|------------------|
| **Orlando Méndez Montes** | [@MendezPro](https://github.com/MendezPro) | Líder de Desarrollo, Frontend y Backend | ✅ Revisado y aprobado |
| **Zamira Cuevas Zamora** | [@ZamyCuevas](https://github.com/ZamyCuevas) | Documentación técnica | ❌ Sin Comentarios |
| **Julia Maday Martinez Santos** | [@JuliaMaday](https://github.com/JuliaMaday) | Desarrollador de Bases de Datos | ❌ Sin Comentarios |
| **Esperanza Cruz Galindo** | [@Dulce990](https://github.com/Dulce990) | Desarrollador FrontEnd | ❌ Sin Comentarios |

### ✒️ **Datos del Autor**

**Creado por:** [@ZamyCuevas](https://github.com/ZamyCuevas)
