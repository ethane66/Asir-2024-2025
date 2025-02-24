1. Conectarte localmente con el usuario "root" de forma corta y después comprobar el usuario
con el que has entrado al servidor.

./mysql.exe -uroot
select user();

2. Crear una cuenta de usuario llamada "usuario3" y contraseña "user3" para acceder en modo
local con todos los privilegios o permisos sobre todas las tablas de la BBDD “curso”.

create user 'usuario3'@'localhost' identified by 'user3';

grant all privileges on *.* to 'usuario3'@'localhost';

3. Crear una cuenta de usuario llamada "usuario4" sin contraseña para acceder en modo local
con el permiso SELECT,INSERT sobre todas las tablas de la BBDD “curso”.

create user 'usuario4'@'localhost';

grant select,insert on curso.* to 'usuario4'@'localhost';

4. Mostrar los campos user, host y password de la tabla user de la BBDD mysql.

select user, host, authentication_string from mysql.user;

5. Mostrar los campos host, db y user de la tabla db de la BBDD mysql.

select host, db, user from mysql.db;

6. Como sabes el "usuario4" se ha creado sin contraseña. Deseamos asignarle la contraseña
"usuario4". ¿Cuál/es de las siguientes formas es válida?. Para la/las formas válidas debes
indicar todos los pasos.

a) Conectado desde el usuario3.
    - Conéctate como usuario3:
      ```sql
      ./mysql.exe -uusuario3 -puser3
      ```
    - Asigna la contraseña al usuario4:
      ```sql
      alter user 'usuario4'@'localhost' identified by 'usuario4';
      ```

b) Conectado desde el usuario4.
    - No es posible, ya que el usuario4 no tiene permisos suficientes para cambiar su propia contraseña.

c) Conectado desde el usuario1.
    - Conéctate como usuario1:
      ```sql
      ./mysql.exe -uusuario1 -p
      ```
    - Asigna la contraseña al usuario4:
      ```sql
      alter user 'usuario4'@'localhost' identified by 'usuario4';
      ```

7. Como sabes el "usuario3" se ha creado con contraseña. Deseamos asignarle una nueva
contraseña "usuario3". ¿Cuál/es de las siguientes formas es válida?. Para la/las formas
válidas debes indicar todos los pasos.

a) Conectado desde el usuario3.
    No se puede

b) Conectado desde el usuario4.
    - No es posible, ya que el usuario4 no tiene permisos suficientes para cambiar la contraseña de otro usuario.

8. Desconectarte como usuario root. Volver a conectarte localmente con el usuario "usuario3"
de forma corta y comprobar el usuario con el que has entrado al servidor.

exit
./mysql.exe -uusuario3 -puser3
select user();

9. Muestra únicamente los privilegios o permisos que tiene asignado el usuario
"usuario3@localhost".

show grants for 'usuario3'@'localhost';

10. Desde "usuario3@localhost" crea una nueva BBDD llamada "instituto". Si no es posible
explica por qué.

si es posible

11. Desconectarte como "usuario3@localhost". Volver a conectarte localmente con el usuario
"usuario1@localhost" de forma corta y comprobar el usuario con el que has entrado al
servidor.

exit
./mysql.exe -uusuario1 -pusuario1
select user();

12. Muestra únicamente los privilegios o permisos que tiene asignado el usuario
"usuario1@localhost".

show grants for 'usuario1'@'localhost';

13. Desde "usuario1@localhost" crea una nueva BBDD llamada "instituto". Si no es posible
explica por qué.

No se puede

14. Desconectarte como "usuario1@localhost". Volver a conectarte localmente con el usuario
"usuario3@localhost" de forma corta y comprobar el usuario con el que has entrado al
servidor.

exit
./mysql.exe -uusuario3 -puser3
select user();

15. Desde "usuario3@localhost" crea una tabla llamada "alumasir2" en la BBDD "curso". Si no
es posible explica por qué.

CREATE TABLE lista (
    nlista INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    notaiaweb TINYINT NOT NULL,
    notaasgbd TINYINT NOT NULL
);

16. Inserta los siguientes datos en la tabla "alumasir2". Si no es posible explica por qué.

INSERT INTO lista (nombre, notaiaweb, notaasgbd) VALUES
('Carlos Casas Cuerda', 4, 5),
('Jorge Iglesias Vela', 6, 8),
('Irene Rosas Madrid', 6, 8);

17. Desconectarte como usuario "usuario3".Volver a conectarte localmente con el usuario
"usuario4" de forma corta y comprobar el usuario con el que has entrado al servidor.

./mysql.exe -uusuario4
select user();

18. Muestra únicamente los privilegios o permisos que tiene asignado el usuario
"usuario4@localhost". Si no es posible explica por qué.

show grants for usuario4@localhost;

19. Muestra todos los datos de la tabla "alumasir2". Si no es posible explica por qué.
 
No tiene permisos para usar la bbdd

20. Inserta los siguientes datos. Si no es posible explica por qué.

No tiene permisos para usar la bbdd

21. Modifica la nota del módulo de IAWEB a todos los alumnos, subiéndoles 1 punto. Si no es
posible explica por qué.

No tiene permisos para usar la bbdd

22. Borra a los alumnos cuya nota es un 5 en el módulo de ASGBD. Si no es posible explica por
qué.

No tiene permisso para usar la bbdd