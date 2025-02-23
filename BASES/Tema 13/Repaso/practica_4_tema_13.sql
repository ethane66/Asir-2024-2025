1. Conectarte localmente con el usuario "root" de forma corta y comprueba el usuario con el
que has entrado al servidor.

.\mysql.exe -uroot

select user();

2. Crear una cuenta de usuario llamada "usuario6@localhost" y contraseña "user6" para
acceder en modo local a las columnas "nombre" y "notalm" con el permiso SELECT y a la
columna "notagbd" con el permiso UPDATE de la tabla "alumasir1" de la BBDD
"instituto". Si no es posible explica por qué.

create user 'usuario6'@'localhost' identified by 'user6';

grant SELECT (nombre,notalm), UPDATE (notagbd) 
on instituto.alumasir1 
to usuario6@localhost;

3. Mostrar los campos user,host y password de la tabla user de la BBDD mysql.

select user,host,authentication_string from mysql.user;

4. Muestra la información de las tablas user, db, tables_priv y columns_priv relacionada con el
usuario "usuario6".

select * from mysql.user where user = 'usuario6';
select * from mysql.db where user = 'usuario6';
select * from mysql.tables_priv where user = 'usuario6';
select * from mysql.columns_priv where user = 'usuario6';

5. Desconectarte como usuario "root".Volver a conectarte localmente con el usuario
"usuario6@ localhost" de forma corta y comprueba el usuario con el que has entrado al
servidor

exit
.\mysql.exe -uusuario6 -puser6
select user();

6. Pon en uso la BBDD "instituto". Si no es posible explica por qué.

Se puede

7. Muestra el contenido de la tabla "alumasir1". Si no es posible explica por qué.

select * from alumasir1;

No puede porque no tiene permisos

8. Muestra el "nombre" y "notalm" de la tabla "alumasir1". Si no es posible explica por qué.

select nombre,notalm from alumasir1;

Si puede, solo tiene permsios a select en esas tablas.

9. Incrementa en 1 la nota de GBD de todos los alumnos de la tabla "alumasir1". Si no es
posible explica por qué.

update alumasir1 set notagbd = notagbd + 1;

No puede porque solo tiene permisos de UPDATE en la columna "notagbd".

10. Desconectarte como usuario "usuario6@localhost".Volver a conectarte localmente con el
usuario "root" de forma corta y comprueba el usuario con el que has entrado al servidor.

exit
.\mysql.exe -uroot
select user();

11. Muestra los privilegios o permisos que tiene asignado el usuario "usuario6@localhost" 

show grants for usuario6@localhost;

12. Elimina todos los permisos o privilegios del usuario "usuario6@localhost". ¿Sigue
existiendo en la tabla "user"? ¿Sigue existiendo en la tabla "db", "tables_priv" o
"columns_priv"? Elimine definitivamente el usuario "cuenta6@localhost".

12. Elimina todos los permisos o privilegios del usuario "usuario6@localhost". ¿Sigue
existiendo en la tabla "user"? ¿Sigue existiendo en la tabla "db", "tables_priv" o
"columns_priv"? Elimine definitivamente el usuario "cuenta6@localhost".

revoke all privileges, grant option from 'usuario6'@'localhost';

select user,host from mysql.user where user = 'usuario6';
select * from mysql.db where user = 'usuario6';
select * from mysql.tables_priv where user = 'usuario6';
select * from mysql.columns_priv where user = 'usuario6';

drop user 'usuario6'@'localhost';

13. Muestra los privilegios o permisos que tiene asignado el usuario "usuario6@localhost".
 
 esta borrado no existe

14. Estando conectado como usuario "root". Añade los privilegios SELECT, INSERT y
DELETE al usuario "usuario6@localhost" en la tabla "alumasir2" de la BBDD "instituto".
Si no es posible explica por qué. Si ha sido posible debes comprobar que se han añadido los
privilegios

esta borrado el usuario

15. Renombra al usuario "usuario6@localhost" como "cuenta6@localhost".

rename user 'usuario6'@'localhost' to 'cuenta6'@'localhost';

16. Mostrar los campos user,host y password de la tabla user de la BBDD mysql.

select user,host,authentication_string from mysql.user;

17. ¿Tiene algún privilegio asignado el usuario "cuenta6@localhost"? ¿Cómo lo compruebas?.
Elimina definitivamente al usuario "cuenta6@localhost". ¿Sigue existiendo en la tabla
"user"? ¿Cómo lo compruebas?

show grants for 'cuenta6'@'localhost';

drop user 'cuenta6'@'localhost';

select user,host from mysql.user where user = 'cuenta6';

mysql> drop user 'cuenta6'@'localhost';
Query OK, 0 rows affected (0.07 sec)

mysql>
mysql> select user,host from mysql.user where user = 'cuenta6';
Empty set (0.01 sec)

mysql>