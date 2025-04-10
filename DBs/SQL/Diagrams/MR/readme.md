# 🧩 MR (Modelo Relacional)  
![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)

## 📌 Descripción  

El **Modelo Relacional (MR)** es un enfoque estructurado para organizar los datos en una base de datos mediante **tablas (relaciones)**. Este modelo se basa en principios matemáticos y lógicos que garantizan la integridad y coherencia de la información, minimizando la redundancia mediante normalización.  

Es ampliamente utilizado en sistemas de gestión de bases de datos como **MySQL**, **PostgreSQL**, y **SQL Server**, especialmente en soluciones empresariales como **ERP**, **CRM**, y sistemas de gestión de inventarios o recursos humanos.

## 📁 Estructura de Archivos

| Carpeta/Archivo | Descripción |
|------------------|-------------|
| `diagrama-mr.png` | Imagen del diagrama relacional de la base de datos. |
| `modelo_relacional.pdf` | Documento con el desarrollo teórico del modelo relacional. |
| `tablas_definidas.sql` | Script SQL con la creación de las tablas del modelo. |
| `relaciones.sql` | Script que define las relaciones (claves primarias y foráneas). |
| `normalizacion.md` | Archivo que detalla el proceso de normalización aplicado. |

## 🧪 Ejemplo Básico  

```sql
-- Creación de la tabla clientes
CREATE TABLE clientes (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  correo VARCHAR(100),
  telefono VARCHAR(15)
);

## ✅ Beneficios del MR

- ✔️ Integridad de datos asegurada mediante restricciones.
- ✔️ Reducción de la redundancia con técnicas de normalización.
- ✔️ Flexibilidad para consultas complejas mediante SQL.
- ✔️ Escalabilidad para sistemas empresariales.

## 👥 Equipo de Desarrollo  

| Integrante | Contacto | Rol | Observaciones |
|------------|----------|----------------------------|------------------|
| **Orlando Méndez Montes** | [@MendezPro](https://github.com/MendezPro) | Líder de Desarrollo, Frontend y Backend | ✅ Revisado y aprobado |
| **Zamira Cuevas Zamora** | [@ZamyCuevas](https://github.com/ZamyCuevas) | Documentación técnica | ❌ Sin Comentarios |
| **Julia Maday Martinez Santos** | [@JuliaMaday](https://github.com/JuliaMaday) | Desarrollador de Bases de Datos | ❌ Sin Comentarios |
| **Esperanza Cruz Galindo** | [@Dulce990](https://github.com/Dulce990) | Desarrollador FrontEnd | ❌ Sin Comentarios |

### ✒️ **Datos del Autor**

**Creado por:** [@ZamyCuevas](https://github.com/ZamyCuevas)
