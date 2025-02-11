1. Conectarte localmente con el usuario "root" de forma corta y comprueba el usuario con el
que has entrado al servidor.

./mysql.exe -uroot

2. Crear una cuenta de usuario llamada "usuario6@localhost" y contraseña "user6" para
acceder en modo local a las columnas "nombre" y "notalm" con el permiso SELECT y a la
columna "notagbd" con el permiso UPDATE de la tabla "alumasir1" de la BBDD
"instituto". Si no es posible explica por qué.

create user 'usuario6'@'localhost' identified by 'user6';

grant SELECT (nombre,notalm), UPDATE (notagbd) 
on instituto.alumasir1 
to usuario6@localhost;

3. Mostrar los campos user,host y password de la tabla user de la BBDD mysql.

select user, host, authentication_string as password from mysql.user;

+------------------+-----------+------------------------------------------------------------------------+
| user             | host      | password                                                               |
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

4) Muestra la información de las tablas user, db, tables_priv y columns_priv relacionada con el 
usuario "usuario6"

SELECT * FROM user WHERE user = 'usuario6';
SELECT * FROM db WHERE user = 'usuario6';
SELECT * FROM tables_priv WHERE user = 'usuario6';
SELECT * FROM columns_priv WHERE user = 'usuario6';

5) Desconectarte   como   usuario   "root".Volver   a   conectarte   localmente   con   el   usuario 
"usuario6@  localhost" de forma corta y comprueba el usuario con el que has entrado al 
servidor.
mysql> exit
Bye

$ mysql -u usuario6 -p
Enter password: ********

mysql> SELECT USER();
+----------------+
| USER()         |
+----------------+
| usuario6@localhost |
+----------------+
1 row in set (0.00 sec)

6)
use instituto;

7)
SELECT * FROM instituto.alumnoasir1;

No puede hacer select de todo porque solo tiene permisios a columnas especificas

8)
select nombre,notalm from alumnoasir1;

9)
update alumnoasir1set notagbd = notagbd+1;
No es posible porque usuario6 no tiene permisos de select en la columna notagbd de la tabla alumnoasir1

10)
quit
mysql -u root -password
select user();

11. Muestra los privilegios o permisos que tiene asignado el usuario "usuario6@localhost" 

show grants for usuario6@localhost;
+------------------------------------------------------------------------------------------------------------+
| Grants for usuario6@localhost                                                                              |
+------------------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `usuario6`@`localhost`                                                               |
| GRANT SELECT (`nombre`, `notalm`), UPDATE (`notagbd`) ON `instituto`.`alumasir1` TO `usuario6`@`localhost` |
+------------------------------------------------------------------------------------------------------------+

12. Elimina todos los permisos o privilegios del usuario "usuario6@localhost". ¿Sigue
existiendo en la tabla "user"? ¿Sigue existiendo en la tabla "db", "tables_priv" o
"columns_priv"? Elimine definitivamente el usuario "cuenta6@localhost".

revoke select (nombre,notalm), update (notagbd) on instituto.alumnoasir1 from usuario6@localhost;
revoke all privileges on instituto.alumnoasir1 from usuario6@localhost;

SELECT * FROM user WHERE user = 'usuario6'; \G
SELECT * FROM db WHERE user = 'usuario6'; \G 
SELECT * FROM tables_priv WHERE user = 'usuario6'; \G
SELECT * FROM columns_priv WHERE user = 'usuario6'; \G

13)
show grants for usuario6@localhost;

14)
grant select, insert, delete on instituto.alumnoasir2 to usuario6@localhost; /*permisos para toda la tabla*/
show grants for usuario6@localhost;

15)
rename user usuario6@localhost to cuenta6@localhost;

16)
select user, host, authentication_string as password from mysql.user;

17)
show grants for cuenta&@localhost;
drop user cuenta6@localhost;