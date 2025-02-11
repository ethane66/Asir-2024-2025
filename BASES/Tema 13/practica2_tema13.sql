1. Conectarte localmente con el usuario "root" de forma corta y después comprobar el usuario
con el que has entrado al servidor.

    mysql.exe -u root -p

2. Crear una cuenta de usuario llamada "usuario3" y contraseña "user3" para acceder en modo
local con todos los privilegios o permisos sobre todas las tablas de la BBDD “curso”.

create user 'usuario3'@'localhost' identified by 'user3';
grant all privileges 
on *.*
to 'usuario3'@'localhost';

3. Crear una cuenta de usuario llamada "usuario4" sin contraseña para acceder en modo local
con el permiso SELECT,INSERT sobre todas las tablas de la BBDD “curso”.

create user 'usuario4'@'localhost';
grant select,insert 
on *.*
to usuario4@localhost;

4. Mostrar los campos user, host y password de la tabla user de la BBDD mysql.

SELECT user, host, authentication_string FROM mysql.user;

+------------------+-----------+------------------------------------------------------------------------+
| user             | host      | authentication_string                                                  |
+------------------+-----------+------------------------------------------------------------------------+
| mysql.infoschema | localhost | $A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED |
| mysql.session    | localhost | $A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED |
| mysql.sys        | localhost | $A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED |
| root             | localhost |                                                                        |
| usuario1         | localhost | $A$005$^␦lBs>1~
p       !        +
j9e82Y.r.iK9Quj81xAhTr7/WqAC0Ze4CHI65aLjN82 |
| usuario2         | localhost |                                                                        |
| usuario3         | localhost | $A$005$-^i3Nay8y<|w#u5MCQnAZv/yP6FKhr1TC5sDQqsVanLx3k/1GLcPcC9pC |
| usuario4         | localhost |                                                                        |
+------------------+-----------+------------------------------------------------------------------------+

5. Mostrar los campos host, db y user de la tabla db de la BBDD mysql.

select host, db, user from mysql.db \G

*************************** 1. row ***************************
host: localhost
  db: performance_schema
user: mysql.session
*************************** 2. row ***************************
host: localhost
  db: sys
user: mysql.sys
2 rows in set (0.00 sec)

