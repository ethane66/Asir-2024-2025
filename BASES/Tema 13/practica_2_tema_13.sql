1. Conectarte localmente con el usuario "root" de forma corta y después comprobar el usuario
    con el que has entrado al servidor.



2. Crear una cuenta de usuario llamada "usuario3" y contraseña "user3" para acceder en modo
    local con todos los privilegios o permisos sobre todas las tablas de la BBDD “curso”.

mysql> grant all privileges
on curso.*
to usuario3@localhost
identified by 'user3';

3. Crear una cuenta de usuario llamada "usuario4" sin contraseña para acceder en modo local
    con el permiso SELECT,INSERT sobre todas las tablas de la BBDD “curso”.

mysql> grant select,insert
on curso.*
to usuario4@localhost
identified by 'user4';ñññ

4. Mostrar los campos user, host y password de la tabla user de la BBDD mysql.



5. Mostrar los campos host, db y user de la tabla db de la BBDD mysql.



6. Como sabes el “usuario4” se ha creado sin contraseña. Deseamos asignarle la contraseña
    "usuario4". ¿Cuál/es de las siguientes formas es válida?. Para la/las formas válidas debes
    indicar todos los pasos.
    a) Conectado desde el usuario3.

    b) Conectado desde el usuario4.

    c) Conectado desde el usuario1.



7. Como sabes el “usuario3” se ha creado con contraseña. Deseamos asignarle una nueva
    contraseña "usuario3". ¿Cuál/es de las siguientes formas es válida?. Para la/las formas
    válidas debes indicar todos los pasos.
    a) Conectado desde el usuario3.

    b) Conectado desde el usuario4.



8. Desconectarte como usuario root. Volver a conectarte localmente con el usuario "usuario3"
    de forma corta y comprobar el usuario con el que has entrado al servidor.



9. Muestra únicamente los privilegios o permisos que tiene asignado el usuario
    "usuario3@localhost".



10. Desde "usuario3@localhost" crea una nueva BBDD llamada "instituto". Si no es posible
     explica por qué.

