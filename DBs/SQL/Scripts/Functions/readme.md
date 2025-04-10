# 🧠 Funciones (Functions)  
![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)

## 📌 Descripción

La carpeta **Functions** contiene las **funciones definidas en SQL** que encapsulan lógica reutilizable del sistema. Estas funciones permiten simplificar procesos como validaciones, cálculos, formateo de datos, control de lógica de negocio y otras operaciones comunes del backend.

Son esenciales para mantener un código más limpio, modular y mantenible.

---

## 📁 Estructura de Archivos

| Archivo                        | Descripción                                                                 |
|-------------------------------|-----------------------------------------------------------------------------|
| `fn_calcular_edad.sql`        | Calcula la edad de una persona a partir de su fecha de nacimiento.         |
| `fn_formatear_nombre.sql`     | Retorna el nombre completo con el formato deseado.                         |
| `fn_validar_correo.sql`       | Verifica si un correo tiene un formato válido mediante expresión regular.  |
| `fn_generar_codigo.sql`       | Genera un código único para usuarios o productos.                          |
| `README.md`                   | Documentación sobre las funciones incluidas en esta carpeta.               |

---

## 🧪 Ejemplos

### 🔹 `fn_calcular_edad.sql`

```sql
DELIMITER $$

CREATE FUNCTION fn_calcular_edad(fecha_nacimiento DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN TIMESTAMPDIFF(YEAR, fecha_nacimiento, CURDATE());
END $$

DELIMITER ;
```

### 🔹 `fn_formatear_nombre.sql`

```sql
DELIMITER $$

CREATE FUNCTION fn_formatear_nombre(nombre VARCHAR(50), apellido VARCHAR(50))
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    RETURN CONCAT(UCASE(LEFT(nombre, 1)), LCASE(SUBSTRING(nombre, 2)), ' ', 
                  UCASE(LEFT(apellido, 1)), LCASE(SUBSTRING(apellido, 2)));
END $$

DELIMITER ;
```

### 🔹 `fn_validar_correo.sql`

```sql
DELIMITER $$

CREATE FUNCTION fn_validar_correo(correo VARCHAR(100))
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    RETURN correo REGEXP '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
END $$

DELIMITER ;
```

---

## 🧭 Consideraciones

- Todas las funciones están escritas para el motor **MySQL**.
- Son funciones determinísticas, lo que facilita su uso en consultas y reportes.
- Pueden integrarse fácilmente en procedimientos, triggers y eventos.

---

## 📎 Recomendaciones

- Utilizar nombres descriptivos para facilitar su comprensión.
- Documentar la entrada y salida de cada función.
- Realizar pruebas antes de usarlas en ambientes productivos.


## 👥 Equipo de Desarrollo  

| Integrante | Contacto | Rol | Observaciones |
|------------|----------|----------------------------|------------------|
| **Orlando Méndez Montes** | [@MendezPro](https://github.com/MendezPro) | Líder de Desarrollo, Frontend y Backend | ✅ Revisado y aprobado |
| **Zamira Cuevas Zamora** | [@ZamyCuevas](https://github.com/ZamyCuevas) | Documentación técnica | ❌ Sin Comentarios |
| **Julia Maday Martinez Santos** | [@JuliaMaday](https://github.com/JuliaMaday) | Desarrollador de Bases de Datos | ❌ Sin Comentarios |
| **Esperanza Cruz Galindo** | [@Dulce990](https://github.com/Dulce990) | Desarrollador FrontEnd | ❌ Sin Comentarios |

### ✒️ **Datos del Autor**

**Creado por:** [@ZamyCuevas](https://github.com/ZamyCuevas)
