Conectarse localmente con el usuario "root" de forma corta y después comprobar el usuario
con el que has entrado al servidor.

shell> mysql-uroot
mysql> select user();

2. Contesta:
a) ¿Cómo se llama la tabla qué almacena las cuentas de usuario?
    user
b) ¿A qué base de datos pertenece esa tabla?
    mysql

3. Mostrar usuario, host y password de todas las cuentas de ususario.
mysql>select user, host, authentification_string
from mysql.user;

4. Crear una cuenta de usuario llamada "usuario1" y contraseña "usuario1" para acceder en
modo local con todos los privilegios o permisos sobre todas las tablas de todas las BBDD.

    CREATE USER 'usuario1'@'localhost' IDENTIFIED BY 'usuario1';
    grant all privileges 
    on *.*
    to usuario1@localhost IDENTIFIED BY 'usuario1';

5. Crear una cuenta de usuario llamada "usuario2" sin contraseña para acceder en modo local
con el permiso SELECT sobre todas las tablas de todas las BBDD.

create user 'usuario2'@'localhost' IDENTIFIED BY '';
grant select 
on *.*
to usuario2@localhost (no es posible)

6. Cuando se hace una conexión al servidor MySQL la identifica por el hostname. ¿Qué partes
tiene el hostname?

-el host desde el cual se hace la conexion
es decir, el nombre de maquina cliente o  ip
-el nombre de usuario

7. Mostrar usuario, host y password de todas las cuentas de ususario.
mysql>select user, host
from mysql

8. Investigar algún campo más de la tabla user de la BBDD mysql. Explica que información
muestran los siguientes campos: select_priv, insert_priv y c. delete_priv.

mysql> select user, host
select_priv, insert_priv, delete_priv
from mysql.user

+------------------+-------------+-------------+-------------+
| user             | select_priv | insert_priv | delete_priv |
+------------------+-------------+-------------+-------------+
| mysql.infoschema | localhost   | N           | N           |
| mysql.session    | localhost   | N           | N           |
| mysql.sys        | localhost   | N           | N           |
| root             | localhost   | Y           | Y           |
+------------------+-------------+-------------+-------------+

9. Investigar los campos de la tabla db de la BBDD mysql. Explica que información muestran
los siguietes campos: select_priv, insert_priv y c. delete_priv.

mysql> select user, host, db
select_priv, insert_priv, delete_priv
from mysql.db;

+---------------+-----------+--------------------+-------------+-------------+
| user          | host      | select_priv        | insert_priv | delete_priv |
+---------------+-----------+--------------------+-------------+-------------+
| mysql.session | localhost | performance_schema | N           | N           |
| mysql.sys     | localhost | sys                | N           | N           |
+---------------+-----------+--------------------+-------------+-------------+

10. Muestra únicamente los privilegios o permisos que tiene asignado el usuario
"usuario2@localhost" 

show grants for usuario1@localhost;



