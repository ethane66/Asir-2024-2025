1. Conectarse localmente con el usuario "root" de forma corta y después comprobar el usuario
con el que has entrado al servidor.

shell>mysql -uroot
mysql>select user()

2. Contesta:
a) ¿Cómo se llama la tabla qué almacena las cuentas de usuario?

user

3. Mostrar usuario, host y password de todas las cuentas de ususario.

mysql> select user, host, authentication_string 
from mysql

4. Crear una cuenta de usuario llamada "usuario1" y contraseña "usuario1" para acceder en
modo local con todos los privilegios o permisos sobre todas las tablas de todas las BBDD.

    mysql> grant all privileges
    on *.*
    to usuario@localhost 
    identfied by 'user1'

5. Crear una cuenta de usuario llamada "usuario2" sin contraseña para acceder en modo local
con el permiso SELECT sobre todas las tablas de todas las BBDD.

mysql> grant select
on *.*
to usuario2@localhost
identified by 'user2'

6. Cuando se hace una conexión al servidor MySQL la identifica por el hostname. ¿Qué partes
tiene el hostname?


7. Mostrar usuario, host y password de todas las cuentas de ususario.


8. Investigar algún campo más de la tabla user de la BBDD mysql. Explica que información
muestran los siguientes campos: select_priv, insert_priv y c. delete_priv.


9. Investigar los campos de la tabla db de la BBDD mysql. Explica que información muestran
los siguietes campos: select_priv, insert_priv y c. delete_priv.


10. Muestra únicamente los privilegios o permisos que tiene asignado el usuario
"usuario2@localhost"



3. Mostrar usuario, host y password de todas las cuentas de ususario.



4. Crear una cuenta de usuario llamada "usuario1" y contraseña "usuario1" para acceder en
modo local con todos los privilegios o permisos sobre todas las tablas de todas las BBDD.



5. Crear una cuenta de usuario llamada "usuario2" sin contraseña para acceder en modo local
con el permiso SELECT sobre todas las tablas de todas las BBDD.



6. Cuando se hace una conexión al servidor MySQL la identifica por el hostname. ¿Qué partes
tiene el hostname?

7. Mostrar usuario, host y password de todas las cuentas de ususario.



8. Investigar algún campo más de la tabla user de la BBDD mysql. Explica que información
muestran los siguientes campos: select_priv, insert_priv y c. delete_priv.



9. Investigar los campos de la tabla db de la BBDD mysql. Explica que información muestran
los siguietes campos: select_priv, insert_priv y c. delete_priv.




10. Muestra únicamente los privilegios o permisos que tiene asignado el usuario
"usuario2@localhost" 


