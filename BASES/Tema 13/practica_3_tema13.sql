5. Crea una tabla llamada "alumasir2" en la BBDD "instituto" con la siguiente estructura. Si no
es posible explica por qué.

CREATE DATABASE IF NOT EXISTS instituto;
USE instituto;

CREATE TABLE alumasir2 (
    nlista TINYINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    notaiaweb TINYINT NOT NULL,
    notaasgbd TINYINT NOT NULL
);


6. Inserta los siguientes datos en la tabla "alumasir2". Si no es posible explica por qué. 

INSERT INTO alumasir2 (nlista, nombre, notaiaweb, notaasgbd) 
VALUES 
(1, 'Carlos Casas Cuerda', 4, 5),
(2, 'Jorge Iglesias Vela', 6, 8),
(3, 'Irene Rosas Madrid', 6, 8);


7. Crea una tabla llamada "alumasir1" en la BBDD "instituto" con la siguiente estructura. Si no
es posible explica por qué.

CREATE DATABASE IF NOT EXISTS instituto;
USE instituto;

CREATE TABLE alumasir1 (
    nlista TINYINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    notagbd TINYINT NOT NULL,
    notalm TINYINT NOT NULL
);


8. Inserta los siguientes datos en la tabla "alumasir1". Si no es posible explica por qué. */

INSERT INTO alumasir1 (nombre, notagbd, notalm) 
VALUES 
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

14. Muestra los privilegios o permisos que tiene asignado el usuario "usuario5@localhost" 

SHOW GRANTS FOR 'usuario5'@'localhost';
+-------------------------------------------------------------------------------------------+
| Grants for usuario5@localhost                                                             |
+-------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `usuario5`@`localhost`                                              |
| GRANT SELECT, INSERT, UPDATE, DELETE ON `instituto`.`alumasir2` TO `usuario5`@`localhost` |
+-------------------------------------------------------------------------------------------+

