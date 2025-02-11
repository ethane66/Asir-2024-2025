1. Conectarte localmente con el usuario "root" de forma corta y comprueba el usuario con el
que has entrado al servidor.

./mysql.exe -u root
select user();

2. Crear una cuenta de usuario llamada "usuario7@localhost" con contraseña "user7"
utilizando la sentencia CREATE USER.

create user 'usuario7'@'localhost' identified by 'user7';

3. Mostrar los campos user, host y password de la tabla user de la BBDD mysql.

select user, host, authentication_string as password from mysql.user;

4. Muestra la información de las tablas user, db, tables_priv y columns_priv relacionada con el
usuario "usuario7@localhost".

SELECT * FROM user WHERE user = 'usuario7';
SELECT * FROM db WHERE user = 'usuario7';
SELECT * FROM tables_priv WHERE user = 'usuario7';
SELECT * FROM columns_priv WHERE user = 'usuario7';

5. Muestra los privilegios o permisos que tiene asignado el usuario "usuario7@localhost".

show grants for 'usuario7'@'localhost';

+----------------------------------------------+
| Grants for usuario7@localhost                |
+----------------------------------------------+
| GRANT USAGE ON *.* TO `usuario7`@`localhost` |
+----------------------------------------------+

6. ¿Qué sentencias puedes ejecutar en el servidor con el usuario "usuario7@localhost"?.

Cuando creamos un usuario, este no tiene permisos para acceder a ninguna base de datos, por lo que no podremos hacer uso de la base de datos instituto.

7. Estando conectado como usuario "root". Añade al usuario "usuario7@localhost" los
siguientes privilegios:
a) SELECT a nivel global.

grant select on *.* 
to usuario7@localhost;

b) INSERT a todas las tablas de la BBDD "instituto".

grant insert on instituto.* 
to usuario7@localhost;

c) DELETE a la tabla "alumasir2" de la BBDD "instituto".

GRANT DELETE ON instituto.alumasir2 
TO 'usuario7'@'localhost';

d) UPDATE a la columna "nombre" de la tabla "alumasir1" de la BBDD "instituto". 

grant update (nombre) on instituto.alumasir1
to usuario7@localhost;

8. Muestra los privilegios o permisos que tiene asignado el usuario "usuario7@localhost" 

show grants for 'usuario7'@'localhost';

+------------------------------------------------------------------------------+
| Grants for usuario7@localhost                                                |
+------------------------------------------------------------------------------+
| GRANT SELECT ON *.* TO `usuario7`@`localhost`                                |
| GRANT INSERT ON `instituto`.* TO `usuario7`@`localhost`                      |
| GRANT UPDATE (`nombre`) ON `instituto`.`alumasir1` TO `usuario7`@`localhost` |
| GRANT DELETE ON `instituto`.`alumasir2` TO `usuario7`@`localhost`            |
+------------------------------------------------------------------------------+

9. Muestra la información de las tablas user, db, tables_priv y columns_priv relacionada con el
usuario "usuario7@localhost".

GRANT SELECT ON *.* TO 'usuario7'@'localhost';
GRANT INSERT ON instituto.* TO 'usuario7'@'localhost';
GRANT DELETE ON instituto.alumasir2 TO 'usuario7'@'localhost';
GRANT UPDATE (nombre) ON instituto.alumasir1 TO 'usuario7'@'localhost';

10. Elimina todos los permisos o privilegios del usuario "usuario7@localhost" que no tenga
asignados a nivel global. 

revoke insert on instituto.* from 'usuario7'@'localhost';
revoke delete on instituto.alumasir2 from 'usuario7'@'localhost';
revoke update (nombre) on instituto.alumasir1 from 'usuario7'@'localhost';

11. Renombra al usuario "usuario7@localhost" y llamalo "cuenta7@localhost". 

rename user usuario7@localhost to cuenta7@localhost;