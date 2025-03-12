# 📘 Database Schema Documentation

> 📌 Generado por ModelDocumentation v3.2

## 📂 Schema: `gimnasio`

**📝 Descripción**: No se proporcionó descripción.

### 🏛 Table: `tbb_cliente`
**📄 Descripción**: Esta tabla almacena la relación entre una persona y su cuenta de usuario en el gimnasio, vinculando su membresía, expediente médico y servicios contratados.

#### 📋 Columnas

| Nombre | Tipo | Comentario |
| --- | --- | --- |
| `ID` | `INT` | Descripcion: Atributo identificador numero auto incremental que distingue de manera unica a la persona. <br>Naturaleza: Cuantitativo<br>Dominio: Enteos positivos<br>Composicion: 1{0-9} |
| `Persona_ID` | `INT` | Descripcion: Identificador de la persona asociada al cliente. Relaciona con la tabla tbb_personas.<br>Naturaleza: Cuantitativa<br>Dominio: Enteros positivos<br>Composicion: 1{0-9} |
| `Usuario_ID` | `INT` | Descripcion: Identificador del usuario en el sistema. Relaciona con la tabla tbb_usuarios.<br>Naturaleza: Cuantitativa<br>Dominio: Enteros positivos<br>Composicion: 1{0-9} |
| `Membresía_ID` | `INT` | Descripcion: Identificador de la membresía contratada por el cliente. Relaciona con la tabla tbb_membresias.<br>Naturaleza: Cuantitativa<br>Dominio: Enteros positivos<br>Composicion: 1{0-9} |
| `Expediente_Médico_ID` | `INT` | Descripcion: Identificador del expediente médico del cliente. Relaciona con la tabla tbb_expedientes_medicos.<br>Naturaleza: Cuantitativa<br>Dominio: Enteros positivos<br>Composicion: 1{0-9} |
| `Servicio_ID` | `INT` | Descripcion: Identificador de los servicios contratados por el cliente. Relaciona con la tabla tbb_servicios.<br>Naturaleza: Cuantitativa<br>Dominio: Enteros positivos<br>Composicion: 1{0-9} |
| `Estatus` | `BIT(1)` | Descripcion: Dato de Auditoria que define el estatus actual del regitro, siendo 0 para un datos no activos y 1 para datos activos para uso en el sistema<br>Naturaleza: Cuantativo<br>Dominio: Booleano<br>Composicion: [0\|1]<br> |
| `Fecha_Actualización` | `DATETIME` | Descripcion: Dato de Auditoria que documenta la fecha y hora de la ultima modificacion del registro<br>Naturaleza: Cuantitativo<br>Dominio: Numeros Enteros Positivos imitados por el calendario y limites de mes y/o año bisiesto.<br>Composicion:<br><br>Año = 4{0-9}4<br>Mes =  [01\|02\|...\|12]<br>Dia =  [01\|02\|..\|31]<br><br>Hora = [00\|01\|...\|23]<br>Minutos = [00\|01\|...\|59]<br>Seguntodos = [00\|01\|...\|59]<br><br>Fecha_Actualizacion = Año+'-'+Mes+'-'+Dia+'-'+Hora+'-'+Munutos+'-'+Segundos |
| `Fecha_Registro` | `DATETIME` | Descripcion: Dato de Auditoria que documenta la fecha y hora de creacion del registro<br>Naturaleza: Cuantitativo<br>Dominio: Numeros Enteros Positivos imitados por el calendario y limites de mes y/o año bisiesto.<br>Composicion:<br><br>Año = 4{0-9}4<br>Mes =  [01\|02\|...\|12]<br>Dia =  [01\|02\|..\|31]<br><br>Hora = [00\|01\|...\|23]<br>Minutos = [00\|01\|...\|59]<br>Seguntodos = [00\|01\|...\|59]<br><br>Fecha_Registro= Año+'-'+Mes+'-'+Dia+'-'+Hora+'-'+Munutos+'-'+Segundos |
