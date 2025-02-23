1. Conectarte localmente con el usuario "root" de forma corta y comprueba el usuario con el
que has entrado al servidor

.\mysql -uroot

select user();

2. Crear una cuenta de usuario llamada "usuario7@localhost" con contraseña "user7"
utilizando la sentencia CREATE USER. 

create user 'usuario7'@'localhost' identified by 'user7';

3. Mostrar los campos user, host y password de la tabla user de la BBDD mysql.

select user,host,authentication_string from mysql.user;

4. Muestra la información de las tablas user, db, tables_priv y columns_priv relacionada con el
usuario "usuario7@localhost".

select * from mysql.user where user = 'usuario7';
select * from mysql.db where user = 'usuario7';
select * from mysql.tables_priv where user = 'usuario7';
select * from mysql.columns_priv where user = 'usuario7';

5. Muestra los privilegios o permisos que tiene asignado el usuario "usuario7@localhost".

show grants for usuario7@localhost;

6. ¿Qué sentencias puedes ejecutar en el servidor con el usuario "usuario7@localhost"?.

Ninguna

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

show grants for usuario7@localhost;

9. Muestra la información de las tablas user, db, tables_priv y columns_priv relacionada con el
usuario "usuario7@localhost".

select * from mysql.user where user = 'usuario7';
select * from mysql.db where user = 'usuario7';
select * from mysql.tables_priv where user = 'usuario7';
select * from mysql.columns.priv where user = 'usuario7';

10. Elimina todos los permisos o privilegios del usuario "usuario7@localhost" que no tenga
asignados a nivel global.

revoke insert on instituto.* from 'usuario7'@'localhost';
revoke delete on instituto.alumasir2 from 'usuario7'@'localhost';
revoke update (nombre) on instituto.alumasir1 from 'usuario7'@'localhost';

11. Renombra al usuario "usuario7@localhost" y llamalo "cuenta7@localhost". 

rename user 'usuario7'@'localhost' to 'cuenta7'@'localhost';

12. ¿Tiene algún privilegio asignado el usuario "cuenta7@localhost"? ¿Cómo lo compruebas?.
Elimina definitivamente al usuario "cuenta7@localhost". ¿Sigue existiendo en la tabla
"user"? ¿Cómo lo compruebas?

show grants for cuenta7@localhost;

13. Crear una cuenta de usuario llamada "usuario8localhost" y contraseña "user8" para acceder
en modo local con todos los privilegios o permisos sobre todas las tablas de todas las
BBDD, usando la sentencia GRANT.

create user 'usuario8'@'localhost' identified by 'user8';

grant all privileges on *.*
to usuario8@localhost;

14. Conéctate como usuario "usuario8localhost" y crea un usuario nuevo llamado
"usuario9localhost" y contraseña "user9" con los mismos privilegios que el usuario
"usuario8localhost", usando la sentencia GRANT. Si no es posible explica por qué.

create user 'usuario9'@'localhost' identified by 'user9';

grant all privileges on *.*
to usuario9@localhost;

se puede crear el usuario pero no asignar permisos

15. Renombra al usuario "usuario8@localhost" como "cuenta8@localhost". Elimina al usuario
"cuenta8@localhost" y compruébalo.

rename user 'usuario8'@'localhost' to 'cuenta8'@'localhost';

16. Conéctate como usuario "root" y crea una cuenta de usuario llamada "usuario8localhost" y
contraseña "user8" para acceder en modo local con todos los privilegios o permisos sobre
todas las tablas de todas las BBDD y con el permiso administrativo CREATE USER, usando
la sentencia GRANT.

create user 'usuario8'@'localhost' identified by 'user8';

grant all privileges on *.* 
to 'usuario8'@'localhost' with grant option;

17. Conéctate como usuario "usuario8localhost" y crea un usuario nuevo llamado
"usuario9localhost" y contraseña "user9" con los mismos privilegios que el usuario
"usuario8localhost", usando la sentencia GRANT. Si no es posible explica por qué.

create user 'usuario9'@'localhost' identified by 'user9';

grant all privileges on *.* to 'usuario9'@'localhost';

18. Renombra al usuario "usuario8@localhost" como "cuenta8@localhost". Elimina al usuario
"cuenta8@localhost" y compruébalo.

rename user 'usuario8'@'localhost' to 'cuenta8'@'localhost';

drop user 'cuenta8'@'localhost';

select * from mysql.user where user = 'cuenta8';

19. Conéctate como usuario "root" y crea una cuenta de usuario llamada "usuario8localhost" y
contraseña "user8" para acceder en modo local con todos los privilegios o permisos sobre
todas las tablas de todas las BBDD, con el permiso administrativo CREATE USER y de
manera que pueda transmitir eso privilegios a otros usuarios, usando la sentencia GRANT.

create user 'usuario8'@'localhost' identified by 'user8';

grant all privileges on *.* to 'usuario8'@'localhost' with grant option;

20. Conéctate como usuario "usuario8localhost" y crea un usuario nuevo llamado
"usuario9localhost" y contraseña "user9" con los mismos privilegios que el usuario
"usuario8localhost", usando la sentencia GRANT. Si no es posible explica por qué.

create user 'usuario9'@'localhost' identified by 'user9';

grant all privileges on *.* to 'usuario9'@'localhost';

21. Conéctate como usuario "root" y eliminale a los usuarios "usuario8localhost" y
"usuario9localhost" los privilegios INSERT,UPDATE y DELETE a nivel global.

revoke insert, update, delete on *.* from 'usuario8'@'localhost';
revoke insert, update, delete on *.* from 'usuario9'@'localhost';

22. Conéctate como usuario "usuario8localhost" y añadele al usuario "usuario9localhost" el
privilegio DELETE a nivel global. Si no es posible explica por qué.

grant delete on *.* to 'usuario9'@'localhost';

23. Conéctate como usuario "root" y añadele al usuario "usuario9localhost" el privilegio
DELETE a nivel global. Si no es posible explica por qué.

grant delete on *.* to 'usuario9'@'localhost';

24. Renombra a los usuarios "usuario8localhost" y "usuario9localhost", borralos y
compruébalo.

rename user 'usuario8'@'localhost' to 'cuenta8'@'localhost';
rename user 'usuario9'@'localhost' to 'cuenta9'@'localhost';

drop user 'cuenta8'@'localhost';
drop user 'cuenta9'@'localhost';

select * from mysql.user where user in ('cuenta8', 'cuenta9');