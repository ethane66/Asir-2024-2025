1. Conectarse localmente con el usuario "root" de forma corta y después comprobar el usuario
con el que has entrado al servidor.

.\mysql.exe -uroot

mysql> select user();

2. Contesta:
a) ¿Cómo se llama la tabla qué almacena las cuentas de usuario?

user

b) ¿A qué base de datos pertenece esa tabla?

mysql

3. Mostrar usuario, host y password de todas las cuentas de ususario.

select user, host, authentication_string
from mysql.user;

4. Crear una cuenta de usuario llamada "usuario1" y contraseña "usuario1" para acceder en
modo local con todos los privilegios o permisos sobre todas las tablas de todas las BBDD.

create user 'usuario1'@'localhost' identified by 'usuario1';

grant all privileges on *.*
to usuario1@localhost;

5. Crear una cuenta de usuario llamada "usuario2" sin contraseña para acceder en modo local
con el permiso SELECT sobre todas las tablas de todas las BBDD.

create user 'usuario2'@'localhost';

grant select on *.*
to usuario2@localhost;

6. Cuando se hace una conexión al servidor MySQL la identifica por el hostname. ¿Qué partes
tiene el hostname?

-el host desde el cual se hace la conexion
es decir, el nombre de maquina cliente o  ip
-el nombre de usuario

7. Mostrar usuario, host y password de todas las cuentas de ususario.

select user, host
from mysql

8. Investigar algún campo más de la tabla user de la BBDD mysql. Explica que información
muestran los siguientes campos: select_priv, insert_priv y c. delete_priv.

select user, host
select_priv, insert_priv, delete_priv
from mysql.user

El código SQL realiza una consulta a la tabla user de la base de datos mysql. Esta tabla contiene información sobre los usuarios de la base de datos MySQL y sus permisos. 

9. Investigar los campos de la tabla db de la BBDD mysql. Explica que información muestran
los siguietes campos: select_priv, insert_priv y c. delete_priv.

select user, host, db
select_priv, insert_priv, delete_priv
from mysql.db;

La tabla mysql.db en la base de datos mysql almacena información sobre los privilegios de acceso a las bases de datos para cada usuario y host. Los campos que mencionas (select_priv, insert_priv, delete_priv) indican los permisos específicos que tiene un usuario sobre una base de datos.

10. Muestra únicamente los privilegios o permisos que tiene asignado el usuario
"usuario2@localhost" 

show grants for usuario1@localhost;

