### 📁 **.idea**
Esta carpeta es generada automáticamente por el IDE **IntelliJ IDEA** o cualquier otro IDE basado en JetBrains. Contiene configuraciones del proyecto específicas del entorno de desarrollo, como:
- Estructura del proyecto
- Configuración de ejecución/debug
- Preferencias del editor

> ⚠️ *No es recomendable incluir esta carpeta en el control de versiones (por ejemplo, en Git), ya que contiene configuraciones locales.*

---

### 📁 **app**
Carpeta central de una aplicación construida con **Laravel**, que contiene la lógica principal del backend. Dentro de esta carpeta se pueden encontrar subcarpetas como:
- `Console`: comandos personalizados de Artisan.
- `Exceptions`: manejo de excepciones.
- `Http`: controladores, middleware y peticiones.
- `Models`: modelos Eloquent para interactuar con la base de datos.

> 🧠 *Es donde se concentra la mayor parte de la lógica de negocio del sistema.*

## 📂 __pycache__

- **Descripción**:  
  El directorio `__pycache__` contiene los archivos compilados (bytecode) de Python (archivos con extensión `.pyc`).  
- **Función**:  
  - Optimizar la carga de módulos, ya que al compilarse el código se acelera su ejecución en ejecuciones futuras.
- **Recomendación**:  
  - No es necesario incluir este directorio en el control de versiones. Por ello, generalmente se agrega en el archivo `.gitignore`.

---

## 🛠 **config**

- **Descripción**:  
  Este módulo o carpeta contiene todos los ajustes y parámetros de configuración de la aplicación.
- **Función**:  
  - Gestionar variables de configuración como conexiones a la base de datos, parámetros de logging, configuraciones de seguridad, etc.
- **Ejemplo de Contenido**:
  ```python
  # config.py
  import os

  class Config:
      DEBUG = os.getenv("DEBUG", "False") == "True"
      SECRET_KEY = os.getenv("SECRET_KEY", "tu_secreto_aqui")
      SQLALCHEMY_DATABASE_URI = os.getenv("DATABASE_URL", "sqlite:///db.sqlite3")
  ```
- **Uso**:  
  - Se importa en otros módulos para acceder a la configuración global del proyecto.

---

## 📂 crud

- **Descripción**:  
  Este módulo se encarga de las operaciones CRUD (Crear, Leer, Actualizar y Eliminar) sobre los modelos de datos.
- **Función**:  
  - Centralizar la lógica de acceso a la base de datos.
  - Permitir que los endpoints (rutas) utilicen funciones reutilizables para manipular los registros.
- **Ejemplo de Funciones**:
  ```python
  # crud/user.py
  from models import User
  from database import db_session

  def create_user(username: str, email: str, password: str) -> User:
      new_user = User(username=username, email=email, password=password)
      db_session.add(new_user)
      db_session.commit()
      return new_user

  def get_user_by_id(user_id: int) -> User:
      return db_session.query(User).filter(User.id == user_id).first()
  ```

---

## ⚙️ **Mi Entorno**

- **Descripción**:  
  Aunque "mi entorno" puede referirse al entorno de desarrollo local, en el contexto del proyecto suele incluir configuraciones específicas para el desarrollo, pruebas y producción.
- **Función**:  
  - Definir variables de entorno (por ejemplo, en el archivo `.env`) y configuraciones propias del ambiente donde se ejecuta la aplicación.
- **Recomendación**:  
  - Mantener separadas las configuraciones de cada ambiente para evitar conflictos y mejorar la seguridad (no exponer datos sensibles).

---

## 📂 models

- **Descripción**:  
  Este directorio contiene la definición de los modelos que representan las tablas de la base de datos.
- **Función**:  
  - Mapear entidades del dominio a tablas en la base de datos utilizando un ORM (por ejemplo, SQLAlchemy).
- **Ejemplo de Modelo**:
  ```python
  # models/user.py
  from sqlalchemy import Column, Integer, String
  from database import Base

  class User(Base):
      __tablename__ = "users"

      id = Column(Integer, primary_key=True, index=True)
      username = Column(String, unique=True, index=True, nullable=False)
      email = Column(String, unique=True, index=True, nullable=False)
      password = Column(String, nullable=False)
  ```

---

## 📂 routes

- **Descripción**:  
  Este módulo define las rutas o endpoints de la API, gestionando las solicitudes y respuestas.
- **Función**:  
  - Asignar funciones de control (handlers) a cada ruta.
  - Integrar la lógica de negocio (usando funciones del módulo `crud`) y validación (usando `schemas`).
- **Ejemplo de Ruta**:
  ```python
  # routes/user_routes.py
  from fastapi import APIRouter, HTTPException
  from crud.user import get_user_by_id
  from schemas.user_schema import UserResponse

  router = APIRouter()

  @router.get("/users/{user_id}", response_model=UserResponse)
  def read_user(user_id: int):
      user = get_user_by_id(user_id)
      if not user:
          raise HTTPException(status_code=404, detail="User not found")
      return user
  ```

---

## 📂 schemas

- **Descripción**:  
  Aquí se definen los esquemas (o serializers) que validan y estructuran los datos de entrada y salida de la API.
- **Función**:  
  - Utilizar bibliotecas como Pydantic para garantizar la integridad de los datos.
  - Facilitar la transformación de datos entre el modelo de base de datos y la respuesta de la API.
- **Ejemplo de Esquema**:
  ```python
  # schemas/user_schema.py
  from pydantic import BaseModel

  class UserBase(BaseModel):
      username: str
      email: str

  class UserResponse(UserBase):
      id: int

      class Config:
          orm_mode = True
  ```

---

## 📁 src

- **Descripción**:  
  El directorio `src` actúa como contenedor principal del código fuente de la aplicación.
- **Función**:  
  - Organizar la estructura del proyecto separando módulos como `config`, `models`, `routes`, `crud`, `schemas`, y `utils` en un solo lugar.
- **Estructura Típica**:
  ```
  src/
  ├── config.py
  ├── main.py
  ├── models/
  ├── routes/
  ├── crud/
  ├── schemas/
  ├── utils/
  └── ...
  ```

---

## 📂 utils

- **Descripción**:  
  Este módulo contiene funciones utilitarias y helpers que pueden ser reutilizados en diferentes partes del proyecto.
- **Función**:  
  - Manejar tareas comunes como la generación de tokens, formateo de respuestas, manejo de errores, etc.
- **Ejemplo de Función Útil**:
  ```python
  # utils/jwt.py
  import jwt
  from datetime import datetime, timedelta

  SECRET_KEY = "tu_secreto_aqui"

  def create_access_token(data: dict, expires_delta: int = 15):
      to_encode = data.copy()
      expire = datetime.utcnow() + timedelta(minutes=expires_delta)
      to_encode.update({"exp": expire})
      encoded_jwt = jwt.encode(to_encode, SECRET_KEY, algorithm="HS256")
      return encoded_jwt
  ```

---

## 📄 .env

- **Descripción**:  
  Archivo que almacena variables de entorno y datos sensibles que configuran el comportamiento de la aplicación.
- **Función**:  
  - Definir la configuración de la base de datos, claves secretas, modo de ejecución (desarrollo/producción), entre otros.
- **Ejemplo de Contenido**:
  ```env
  DEBUG=True
  SECRET_KEY=tu_secreto_aqui
  DATABASE_URL=postgresql://user:password@localhost/db_name
  ```
- **Recomendación**:  
  - **No** versionar este archivo en sistemas de control de versiones para proteger información sensible.

---

## 📄 .gitignore

- **Descripción**:  
  Archivo que especifica qué archivos y directorios deben ser ignorados por Git.
- **Función**:  
  - Evitar subir archivos generados, configuraciones locales o datos sensibles al repositorio.
- **Ejemplo de Contenido**:
  ```
  # Ignorar archivos de compilación de Python
  __pycache__/
  *.pyc

  # Variables de entorno
  .env

  # Entornos virtuales
  venv/
  env/
  ```

---

## 📄 main.py

- **Descripción**:  
  Es el punto de entrada principal de la aplicación.
- **Función**:  
  - Inicializar la aplicación (por ejemplo, utilizando un framework como FastAPI o Flask).
  - Configurar las rutas y middleware.
  - Ejecutar el servidor web.
- **Ejemplo de Código** (utilizando FastAPI):
  ```python
  # main.py
  from fastapi import FastAPI
  from routes import user_routes, training_routes

  app = FastAPI(title="API de Ejemplo")

  # Incluir los routers definidos en el directorio routes
  app.include_router(user_routes.router, prefix="/api/v1")
  app.include_router(training_routes.router, prefix="/api/v1")

  if __name__ == "__main__":
      import uvicorn
      uvicorn.run(app, host="0.0.0.0", port=8000)
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
