<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="author" content="WB Datadict">
  <meta name="description" content="amiauri Data Dictionary.">
  <title>amiauri Data Dictionary</title>
  <script>
    // Highlight table corresponding to the current fragment in the URL.
    document.addEventListener("DOMContentLoaded", function(){
      var tables = document.querySelectorAll("table");
      document.querySelectorAll("nav a").forEach(function(link) {
          link.addEventListener("click", function() {
            // Remove all classes from tables.
            tables.forEach(function(table) {
                table.classList.remove("focused");
            });
            // Get a.href value and extract its fragment id.
            // Highlight table using fragment id.
            document.querySelector(this.hash).classList.add("focused");
          });
      });
    });
  </script>
  <style type="text/css">
    a {
        text-decoration: none;
    }
    abbr {
        cursor: help;
    }
    header {
        color: #6A6A6A;
        text-align: right;
    }
    table {
        border-collapse: collapse;
        margin-bottom: 30px;
        width: 100%;
    }
    table caption {
        font-size: 120%;
        font-weight: bold;
    }
    table, td, th {
        border-color: silver;
        border-style: solid;
        border-width: 1px;
    }
    caption {
        color: black;
    }
    td, th {
        padding: 1em;
    }
    tr:hover {
        color: #333;
        background-color: #F2F2F2;
    }
    th {
        background-color: #F5F5F5;
    }
    td {
        color: #6A6A6A;
    }
    ul {
        font-style: italic;
    }
    .centered {
        text-align: center;
    }
    .field {
        color: #4C4C4C;
        font-weight: bold;
    }
    .focused {
        outline-color: aqua;
        outline-style: solid;
        outline-width: thin;
    }
  </style>
</head>

<body>
  <header>
    <h1>amiauri<br> Data Dictionary</h1>
    <p>
      <em>2025-03-05</em>
    </p>
    <p>
      <em></em>
    </p>
  </header>

  <nav><h2>Index</h2><ul><li><a href='#colaborador'>colaborador</a></li><li><a href='#sucursal'>sucursal</a></li><li><a href='#tbb_puesto'>tbb_puesto</a></li></ul></nav>

  <div><table id='colaborador'><caption>colaborador</caption><tr><td colspan='12'></td></tr><tr><th>Column name</th><th>DataType</th><th><abbr title='Primary Key'>PK</abbr></th><th><abbr title='Foreign Key'>FK</abbr></th><th><abbr title='Not Null'>NN</abbr></th><th><abbr title='Unique'>UQ</abbr></th><th><abbr title='Binary'>BIN</abbr></th><th><abbr title='Unsigned'>UN</abbr></th><th><abbr title='Zero Fill'>ZF</abbr></th><th><abbr title='Auto Increment'>AI</abbr></th><th>Default</th><th>Comment</th></tr><tr><td class='field'>id_colaborador</td><td>INT</td><td class='centered'>&#10004;</td><td class='centered'>&nbsp;</td><td class='centered'>&#10004;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&#10004;</td><td></td><td>Identificador único del colaborador</td></tr><tr><td class='field'>nombre</td><td>VARCHAR(100)</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&#10004;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td></td><td>Nombre completo del colaborador</td></tr><tr><td class='field'>apellido</td><td>VARCHAR(100)</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&#10004;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td></td><td>Apellido del colaborador</td></tr><tr><td class='field'>correo</td><td>VARCHAR(100)</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&#10004;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td></td><td>Correo electrónico único del colaborador</td></tr><tr><td class='field'>telefono</td><td>VARCHAR(15)</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td>NULL</td><td>Número de contacto del colaborador</td></tr><tr><td class='field'>direccion</td><td>TEXT</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td>NULL</td><td>Dirección del colaborador</td></tr><tr><td class='field'>fecha_nacimiento</td><td>DATE</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td>NULL</td><td>Fecha de nacimiento del colaborador</td></tr><tr><td class='field'>fecha_ingreso</td><td>DATETIME</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td>CURRENT_TIMESTAMP</td><td>Fecha en la que el colaborador ingresó al gimnasio</td></tr><tr><td class='field'>estado</td><td>ENUM('Activo', 'Inactivo')</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td>'Activo'</td><td>Estado del colaborador (Activo o Inactivo)</td></tr><tr><td class='field'>id_puesto</td><td>INT</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td>NULL</td><td>Referencia al puesto que ocupa el colaborador</td></tr></table><table id='sucursal'><caption>sucursal</caption><tr><td colspan='12'></td></tr><tr><th>Column name</th><th>DataType</th><th><abbr title='Primary Key'>PK</abbr></th><th><abbr title='Foreign Key'>FK</abbr></th><th><abbr title='Not Null'>NN</abbr></th><th><abbr title='Unique'>UQ</abbr></th><th><abbr title='Binary'>BIN</abbr></th><th><abbr title='Unsigned'>UN</abbr></th><th><abbr title='Zero Fill'>ZF</abbr></th><th><abbr title='Auto Increment'>AI</abbr></th><th>Default</th><th>Comment</th></tr><tr><td class='field'>id_sucursal</td><td>INT</td><td class='centered'>&#10004;</td><td class='centered'>&nbsp;</td><td class='centered'>&#10004;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&#10004;</td><td></td><td>Identificador único de la sucursal</td></tr><tr><td class='field'>nombre</td><td>VARCHAR(100)</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&#10004;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td></td><td>Nombre de la sucursal</td></tr><tr><td class='field'>ubicacion</td><td>TEXT</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&#10004;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td></td><td>Dirección o ubicación de la sucursal</td></tr><tr><td class='field'>telefono</td><td>VARCHAR(15)</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td>NULL</td><td>Número de contacto de la sucursal</td></tr><tr><td class='field'>correo</td><td>VARCHAR(100)</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td>NULL</td><td>Correo electrónico de la sucursal</td></tr><tr><td class='field'>horario</td><td>VARCHAR(100)</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td>NULL</td><td>Horario de operación de la sucursal</td></tr><tr><td class='field'>fecha_apertura</td><td>DATE</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td>NULL</td><td>Fecha en la que se inauguró la sucursal</td></tr><tr><td class='field'>estado</td><td>ENUM('Activo', 'Inactivo')</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td>'Activo'</td><td>Estado de la sucursal (Activo o Inactivo)</td></tr><tr><td class='field'>fecha_creacion</td><td>DATETIME</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td>CURRENT_TIMESTAMP</td><td>Fecha de registro en la base de datos</td></tr></table><table id='tbb_puesto'><caption>tbb_puesto</caption><tr><td colspan='12'>La entidad Puesto representa los diferentes cargos dentro del gimnasio, definiendo sus responsabilidades, nivel jerárquico y condiciones laborales. Esta relacionada con la entidad SUCURSAL y COLABORADOR</td></tr><tr><th>Column name</th><th>DataType</th><th><abbr title='Primary Key'>PK</abbr></th><th><abbr title='Foreign Key'>FK</abbr></th><th><abbr title='Not Null'>NN</abbr></th><th><abbr title='Unique'>UQ</abbr></th><th><abbr title='Binary'>BIN</abbr></th><th><abbr title='Unsigned'>UN</abbr></th><th><abbr title='Zero Fill'>ZF</abbr></th><th><abbr title='Auto Increment'>AI</abbr></th><th>Default</th><th>Comment</th></tr><tr><td class='field'>id</td><td>INT</td><td class='centered'>&#10004;</td><td class='centered'>&nbsp;</td><td class='centered'>&#10004;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&#10004;</td><td></td><td>Descripcion: Atributo identificador número auto incremental que distingue de manera única al PUESTO. \\\\\\\\nNaturaleza: Cuantitativo\\\\\\\\nDominio: Enteros positivos\\\\\\\\nComposicion: 1{0-9}</td></tr><tr><td class='field'>Sucursal</td><td>INT</td><td class='centered'>&nbsp;</td><td class='centered'><a href='#Sucursal'>&#10004;</a></td><td class='centered'>&#10004;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td></td><td>Descripción: Identificador de la sucursal en la que se designa el puesto, relacionado con la tabla Sucursal para indicar donde se asigna este cargo.\\\\nNaturaleza: Cuantitativo\\\\nDominio: Enteros positivos\\\\nComposición: 1{0-9}</td></tr><tr><td class='field'>Colaborador</td><td>INT</td><td class='centered'>&nbsp;</td><td class='centered'><a href='#Colaborador'>&#10004;</a></td><td class='centered'>&#10004;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td></td><td>Descripción:Identificador único que determina a quien se le asigna dicha responsabilidad.\\nNaturaleza: Cuantitativo\\nDominio: Enteros positivos\\nComposición: 1{0-9}</td></tr><tr><td class='field'>nombre</td><td>VARCHAR(100)</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&#10004;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td></td><td>Descripción: Valor asociado al rango jerarquico que se asigna a un colaborador.\\nNaturaleza: Cualitativo\\nDominio: Cadena de texto\\nComposición: 0{A-z }80</td></tr><tr><td class='field'>descripcion</td><td>TEXT</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td>NULL</td><td>Descripción:Contiene informacion detallada que dicta las responsabilidaddes de dicha jerarquia, proporcionando información adicional sobre sus características y beneficios..\\nNaturaleza: Cualitativo\\nDominio: Cadena de texto\\nComposición: {A-z|,|.| |}</td></tr><tr><td class='field'>salario_base</td><td>DECIMAL(10,2)</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&#10004;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td></td><td>Descripción: Representa el valor monetario que sera otorgado al resaponsable de este cargo, indicado en formato decimal con precisión de hasta dos decimales.\\nNaturaleza: Cuantitativo\\nDominio: Números decimales\\nComposición: 1{0-9}+(.[0-9]{1,2})</td></tr><tr><td class='field'>horario</td><td>VARCHAR(50)</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td>NULL</td><td>Descripción: Representa el horario laboral asociado a un puesto dentro del gimnasio, especificando las franjas horarias en las que un colaborador debe desempeñar sus funciones.\nNaturaleza: Cualitativo (estructurado como una cadena de texto representando intervalos de tiempo).\nDominio: Texto estructurado en formato de horario, utilizando combinaciones de intervalos de tiempo dentro de un día laboral.\nComposición:  0{A-z }50</td></tr><tr><td class='field'>estatus</td><td>BIT(1)</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td>b'1'</td><td>Descripcion: Dato de Auditoria que define el estatus actual del regitro, siendo 0 para un datos no activos y 1 para datos activos para uso en el sistema\\\\\\\\nNaturaleza: Cuantativo\\\\\\\\nDominio: Booleano\\\\\\\\nComposicion: [0|1]\\\\\\\\n</td></tr><tr><td class='field'>fecha_creacion</td><td>DATETIME</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&#10004;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td></td><td>Descripcion: Dato de Auditoria que documenta la fecha y hora de creacion del registro\\\\nNaturaleza: Cuantitativo\\\\nDominio: Numeros Enteros Positivos imitados por el calendario y limites de mes y/o año bisiesto.\\\\nComposicion:\\\\n\\\\nAño = 4{0-9}4\\\\nMes =  [01|02|...|12]\\\\nDia =  [01|02|..|31]\\\\n\\\\nHora = [00|01|...|23]\\\\nMinutos = [00|01|...|59]\\\\nSeguntodos = [00|01|...|59]\\\\n\\\\nFecha_Registro= Año+&apos;-&apos;+Mes+&apos;-&apos;+Dia+&apos;-&apos;+Hora+&apos;-&apos;+Munutos+&apos;-&apos;+Segundos</td></tr><tr><td class='field'>fecha_modificacion</td><td>DATETIME</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td class='centered'>&nbsp;</td><td>NULL</td><td>Descripcion: Dato de Auditoria que documenta la fecha y hora en la que fue modificado el registro\\\\\\\\nNaturaleza: Cuantitativo\\\\\\\\nDominio: Numeros Enteros Positivos imitados por el calendario y limites de mes y/o año bisiesto.\\\\\\\\nComposicion:\\\\\\\\n\\\\\\\\nAño = 4{0-9}4\\\\\\\\nMes =  [01|02|...|12]\\\\\\\\nDia =  [01|02|..|31]\\\\\\\\n\\\\\\\\nHora = [00|01|...|23]\\\\\\\\nMinutos = [00|01|...|59]\\\\\\\\nSeguntodos = [00|01|...|59]\\\\\\\\n\\\\\\\\nFecha_Registro= Año+&apos;-&apos;+Mes+&apos;-&apos;+Dia+&apos;-&apos;+Hora+&apos;-&apos;+Munutos+&apos;-&apos;+Segundos</td></tr></table></div>
</body>
</html>
