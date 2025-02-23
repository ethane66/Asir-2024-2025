1. Conectarte localmente con el usuario "root" de forma corta y comprueba el usuario con el
que has entrado al servidor.

.\mysql.exe -uroot
select user();


2. Borra la BBDD "instituto".

drop database instituto;

3. Borra la tabla "alumasir2" de la BBDD "curso".

drop table alumasir2;

4. Crea una nueva BBDD llamada "instituto". Si no es posible explica por qué.

create database instituo;

5. Crea una tabla llamada "alumasir2" en la BBDD "instituto" con la siguiente estructura. Si no
es posible explica por qué.

USE instituto; -- Selecciona la base de datos "instituto"

CREATE TABLE alumasir2 (
    nlista INT(2) AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    notaiaweb INT(2) NOT NULL,
    notaasgbd INT(2) NOT NULL
);

6. Inserta los siguientes datos en la tabla "alumasir2". Si no es posible explica por qué. 

INSERT INTO alumasir2 (nombre, notaiaweb, notaasgbd) VALUES
('Carlos Casas Cuerda', 4, 5),
('Jorge Iglesias Vela', 6, 8),
('Irene Rosas Madrid', 6, 8);

7. Crea una tabla llamada "alumasir1" en la BBDD "instituto" con la siguiente estructura. Si no
es posible explica por qué.

USE instituto;  -- Asegúrate de estar utilizando la base de datos "instituto"

CREATE TABLE alumasir1 (
    nlista INT(2) AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    notagbd INT(2) NOT NULL,
    notalm INT(2) NOT NULL
);

8. Inserta los siguientes datos en la tabla "alumasir1". Si no es posible explica por qué. 

INSERT INTO alumasir1 (nombre, notagbd, notalm) VALUES
('Pablo Casas Casas', 7, 8),
('David Luz Vela', 5, 4),
('Ana Madrid Luengo', 6, 5);

9. Muestra el contenido de la tabla "alumasir2".

select * from alumasir2;

10. Crear una cuenta de usuario llamada "usuario5@localhost" y contraseña "user5" para
acceder en modo local con los permisos SELECT, INSERT, UPDATE y DELETE sobre la
tabla "alumasir2" de la BBDD "instituto". Si no es posible explica por qué.

create user 'usuario5'@'localhost' identified by 'user5';

grant select,insert,update,delete on instituto.alumasir2 
to usuario5@localhost;

11. Desconectarte como usuario "root".Volver a conectarte localmente con el usuario
"usuario5@localhost" de forma corta y comprueba el usuario con el que has entrado al
servidor. 

exit
.\mysql.exe -uusuario5 -puser5

select user();

12. Pon en uso la BBDD "instituto". Si no es posible explica por qué. 

use instituto;

13. Inserta los siguientes datos en la tabla "alumasir1". Si no es posible explica por qué. 

Solo tiene permisos para alumasir2

14. Muestra los privilegios o permisos que tiene asignado el usuario "usuario5@localhost" 

show grants for usuario5@localhost;

15. Quita los privilegios UPDATE y DELETE al usuario "usuario5@localhost". Si no es posible
explica por qué.

revoke update,delete on instituto.alumasir2 
from usuario5@localhost;

No tiene permisos de grant.

16. ¿Qué usuario puede quitarle los privilegios UPDATE y DELETE al usuario
"usuario5@localhost". Contesta si o no, explica por qué y cómo lo haces?. También debes
comprobar si se han eliminado los privilegios.
a) Usuario "usuario1@localhost".

No puede

b) Usuario root. 

revoke update,delete on instituto.alumasir2 
from usuario5@localhost;

17. Estando conectado como usuario "root". Vuelve a añadirle los privilegios UPDATE y
DELETE al usuario "usuario5@localhost". Si no es posible explica por qué. Si ha sido
posible debes comprobar que se han añadido los privilegios.

grant update,delete on instituto.alumasir2
to usuario5@localhost;

18. Muestra la información de las tablas user, db y tables_priv relacionada con el usuario
"usuario5".

SELECT * FROM mysql.user WHERE user = 'usuario5';
SELECT * FROM mysql.db WHERE user = 'usuario5';
SELECT * FROM mysql.tables_priv WHERE user = 'usuario5';


