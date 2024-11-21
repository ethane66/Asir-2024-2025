1. Arranca el servidor MySQL en el panel de wamp. A continuación desde una consola de MS-DOS conéctate como usuario “root” y comprueba que has entrado como usuario “root”.
shell> mysql -u root -p
mysql> select user();
+----------------+     
| user()         |     
+----------------+     
| root@localhost |     
+----------------+     
1 row in set (0.00 sec)

2. Ejecuta o lanza el script "C:\tema11\ejercicio2_practica1_tema11_mysql   .sql" desde el servidor. ¿Es posible? Si has contestado que no explica por qué.

mysql> source H:\UwAmp\bin\database\mysql-5.7.11\bin\script\2\ejercicio2_practica1_11.sql

Si es posible ya que el usuario tiene permisos de ejecución de scripts

3. ¿De qué tipo son las tablas de la BBDD “mi_club”? ¿Qué caracteres entienden? Obligatoriamente debes incluir los comandos que permiten mostrar la información anterior.

mysql> show create table cuotas \G 
*************************** 1. row ***************************
       Table: cuotas
Create Table: CREATE TABLE `cuotas` (
  `codigo_actividad` char(4) NOT NULL,
  `pago` enum('mensual','anual') NOT NULL DEFAULT 'mensual',
  `actividad` varchar(20) NOT NULL,
  `precio` float(7,2) NOT NULL,
  PRIMARY KEY (`codigo_actividad`,`pago`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
1 row in set (0.00 sec)

5. ¿De qué tipo son las tablas de la BBDD “mi_club”? ¿Qué caracteres entienden? Obligatoriamente debes incluir los comandos que permiten mostrar la información anterior

Las tablas de mi_club son InnoDB y entiende caracteres latinos

show create table socios \G 
*************************** 1. row ***************************
       Table: socios
Create Table: CREATE TABLE `socios` (
  `num_socio` int(4) NOT NULL,
  `codigo_actividad` char(4) NOT NULL,
  `pago` enum('mensual','anual') NOT NULL DEFAULT 'mensual',
  `nombre` varchar(15) NOT NULL,
  PRIMARY KEY (`num_socio`,`codigo_actividad`),
  KEY `FK_SOCIOS_CUOTAS` (`codigo_actividad`),
  CONSTRAINT `FK_SOCIOS_CUOTAS` FOREIGN KEY (`codigo_actividad`) REFERENCES `cuotas` 
(`codigo_actividad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
1 row in set (0.01 sec)

Las tablas de mi_club son innoDB y entienden caracteres latinos


6. Crea   un   nuevo   script   "C:\tema12\InnoDB_utf8_practica1_tema12_mysql.sql"   y   lanzalo desde el servidor. Obligatoriamente este nuevo script debe incluir para cada una de las tablas:el tipo de tabla (InnoDB) y el tipo de caracteres que entiende (utf8)

mysql> source script\2\ejercicio2_practica1_11innoDB_utf8.sql
7. ¿De qué tipo son las tablas de la BBDD “mi_club”? ¿Qué caracteres entienden? Obligatoriamente debes incluir los comandos que permiten mostrar la información anterior

mysql> show create table cuotas \G
*************************** 1. row ***************************
       Table: cuotas
Create Table: CREATE TABLE `cuotas` (
  `codigo_actividad` char(4) NOT NULL,
  `pago` enum('mensual','anual') NOT NULL DEFAULT 'mensual',
  `actividad` varchar(20) NOT NULL,
  `precio` float(7,2) NOT NULL,
  PRIMARY KEY (`codigo_actividad`,`pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
1 row in set (0.00 sec)

Las tablas de mi_club ahora son innoDB y entienden caracteres utf8

8. Indica la ruta completa del directorio de datos.

D:\wamp64\bin\mysql\mysql8.3.0\data\mi_club

9. Escribe en forma de árbol las carpetas y ficheros que se crean en el directorio de datos al crear una nueva base de datos con tablas de tipo InnoDB

PS D:\wamp64\bin\mysql\mysql8.3.0\data> tree
Listado de rutas de carpetas
El número de serie del volumen es 360C-2A57
D:.
├───#innodb_redo
├───#innodb_temp
├───curso
├───mi_club
├───mysql
├───performance_schema
└───sys

10. Explica detalladamente qué almacenan cada uno de los ficheros que se crean en el directorio de datos al crear una nueva base de datos con tablas de tipo InnoDB.

En los archivos .frm está la estructura de la tabla y claves primarias

En el archivo db.opt se guardan las opciones de la base de datos

En el archivo ibdata1 se almacenan los datos de las tablas

ibdata 0 y 1 son el equivalente a *.ibd !!!

ib_logfile 0 e 1 guardan los indices para caso de recuperación ¿?

11. Crea un nuevo script "C:\tema12\MyISAM_utf8_practica1_tema12_mysql.sql" y lanzalo desde el servidor. Obligatoriamente este nuevo script debe incluir para cada una de las tablas:el tipo de tabla (MyISAM) y el tipo de caracteres que entiende (utf8)

mysql> source script\2\ejercicio2_practica1_11MyISAM_utf8.sql 

12. ¿De qué tipo son las tablas de la BBDD “mi_club”? ¿Qué caracteres entienden? Obligatoriamente debes incluir los comandos que permiten mostrar la información anterior

mysql> show create table socios \G
*************************** 1. row ***************************
       Table: socios
Create Table: CREATE TABLE `socios` (
  `num_socio` int(4) NOT NULL,
  `codigo_actividad` char(4) NOT NULL,
  `pago` enum('mensual','anual') NOT NULL DEFAULT 'mensual',
  `nombre` varchar(15) NOT NULL,
  PRIMARY KEY (`num_socio`,`codigo_actividad`),
  KEY `FK_SOCIOS_CUOTAS` (`codigo_actividad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
1 row in set (0.00 sec)

Ahora las tablas son de tipo MyISAM y entienden caracteres utf8

13. Indica la ruta completa del directorio de datos.

H:\UwAmp\bin\database\mysql-5.7.11\data\mi_club

14. Escribe en forma de árbol las carpetas y ficheros que se crean en el directorio de datos al crear una nueva base de datos con tablas de tipo MyISAM
\mysql-5.7.11\data>
              ├───mi_club
              │       cuotas.frm
              │       cuotas.MYD
              │       cuotas.MYI
              │       db.opt
              │       socios.frm
              │       socios.MYD
              │       socios.MYI

15. Explica detalladamente qué almacenan cada uno de los ficheros que se crean en el directorio de datos al crear una nueva base de datos con tablas de tipo MyISAM

Los archivos .frm incluyen la estructura de la tabla 

Los archivos .MYD almacenan los datos de las filas de las tablas

Los archivos .MYI almacenan los índices de la tabla (claves primarias, unique, fk)

En el archivo db.opt se guardan las opciones de la base de datos

17. Completa las siguientes frases:
a) Las tablas MEMORY se caracterizan por:
  •Almacenar ... los datos en memoria
  •Ser ... muy rapidas porque estan en memoria
b) Las tablas MEMORY son muy útiles para crear ... tablas temporales
c) Las tablas HEAP únicamente guardan en disco un fichero ... .frm con la estructura de las tablas